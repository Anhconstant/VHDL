LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY LCD IS
  PORT(
    CLK        : IN    STD_LOGIC;								-- clock signal 
    RW, RS, E  : OUT   STD_LOGIC;								--read/write, setup/data, pin enable
    LCD_Data   : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);		-- bus data LCD
	 Chuc_Ascii : IN STD_LOGIC_VECTOR(7 downto 0) ;			-- x0 vehicles
	 Donvi_Ascii : IN STD_LOGIC_VECTOR(7 downto 0)			-- 0x vehicles
	 );
END entity ;

ARCHITECTURE ACT OF LCD IS
  TYPE CONTROL IS(power_up, initialize, RESETLINE, line1, line2, send);
  SIGNAL    state      : CONTROL;
  SIGNAL 	ptr     	  : natural range 0 to 3; 				-- pointer 
  SIGNAL 	line		  : STD_LOGIC := '1';
BEGIN
  PROCESS(clk)
    VARIABLE counter : INTEGER := 0; 							-- time_counter
  BEGIN
  IF(rising_edge(CLK)) THEN
    
      CASE state IS
        
        WHEN power_up =>
          IF(counter < 2500000) THEN    						--wait 50ms to init  LCD
            counter := counter + 1;
            state <= power_up;
          --hoan thanh
            counter := 0;
            rs <= '0';
            RW <= '0';
            state <= initialize;									-- completed to init
          END IF;
            
        WHEN initialize =>											-- Pin E co 1ms = hign to 1ms = low to command
          counter := counter + 1;
          IF(counter < (50000)) THEN       
            lcd_data <= "00111100";								-- mode 2 col , turn on LCD
            e <= '1';
            state <= initialize;
          ELSIF(counter < 100000) THEN    
            lcd_data <= "00000000";
            e <= '0';
            state <= initialize;
          ELSIF(counter < 150000) THEN    
            lcd_data <= "00001100";								-- turn on LCD, turn on pointer 
            --lcd_data <= "00001101";    						-- turn on LCD, turn off pointer , Bink
            --lcd_data <= "00001110";    						-- turn on LCD, turn on pointer
            --lcd_data <= "00001111";    						-- turn on LCD, turn on pointer, Bink 
            --lcd_data <= "00001000";    						-- turn off LCD, turn off pointer
            --lcd_data <= "00001001";    						-- turn off LCD, turn off pointer, Bink
            --lcd_data <= "00001010";    						-- turn off LCD, turn on pointer
            --lcd_data <= "00001011";    						-- turn off LCD, turn on pointer, Bink            
            e <= '1';
            state <= initialize;
          ELSIF(counter < 200000) THEN							
            lcd_data <= "00000000";
            e <= '0';
            state <= initialize;
          ELSIF(counter < 250000) THEN							-- clear LCD
            lcd_data <= "00000001";
            e <= '1';
            state <= initialize;
          ELSIF(counter < 300000) THEN  
            lcd_data <= "00000000";
            e <= '0';
            state <= initialize;
          ELSIF(counter < 350000) THEN  						-- setup mode entry
            lcd_data <= "00000110";      						--mode increase pointer
            e <= '1';
            state <= initialize;
          ELSIF(counter < 400000) THEN  
            lcd_data <= "00000000";
            e <= '0';
            state <= initialize;
          ELSE                                   
            counter := 0;
            state <= RESETLINE;									-- complete mode initialize
          END IF;    
			 
		  WHEN resetline =>
			 ptr <= 3;
			 if line = '1' then
		      lcd_data <= "10000000"; -- command start col 1
            rs <= '0';
            RW <= '0';
            counter := 0; 
            state <= send;
			 else
			   lcd_data <= "11000000"; -- command start col 2
            rs <= '0';
            RW <= '0';
            counter := 0; 
            state <= send;
			 end if;
       
        WHEN line1 =>
				line <= '1';
				lcd_data <= "00110111";
            rs <= '1';
            RW <= '0';
            counter := 0; 
				line <= '1';
            state <= send;
				
		  WHEN line2 =>
				line <= '0';
				lcd_data <= "00110100";
            rs <= '1';
            RW <= '0';
            counter := 0;            
            state <= send;
		  
        --send instruction to lcd        
        WHEN send =>
			  IF(counter < 2500) THEN  --do not exit for 50us
				  IF(counter < 1000) THEN      --negative enable
					e <= '1';
				  ELSIF(counter < 2500) THEN  --positive enable half-cycle
					e <= '0';
				  END IF;
				  counter := counter + 1;
				  state <= send;
			  ELSE
			  	  counter := 0;
				  if line = '1' then
					   if ptr = 0 then
							line <= '0';
							state <= resetline;
						else
							ptr <= ptr - 1;
							state <= line1;
						end if;
				  else
						if ptr = 0 then
							line <= '1';
							state <= resetline;
						else
							ptr <= ptr - 1;
							state <= line2;
						end if;
				  end if;
			  END IF;
      END CASE;    
    END IF;
  END PROCESS;
END ACT;