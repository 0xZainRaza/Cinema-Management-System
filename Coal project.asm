; Made by
; Taha Qaiser (21k-4779)
; Ali Mehdi (21k-4771)
; Zain Ali Raza (21k-4755)


include irvine32.inc
.data

	Interface BYTE " <------------- [ MAIN INTERFACE ] ---------------> ",0ah
			  BYTE "  <1> Admin login ",0ah
			  BYTE "  <2> Customer	",0ah
			  BYTE "  <0> Exit		 :",0	
	INTERFACE_CUSTOMER BYTE "<----------------- [ CUSTOMER ] ----------------->",0Ah
					BYTE " <1> Shows Streaming Right Now ",0Ah
					BYTE " <2> Shows Info ",0Ah
					BYTE " <3> Buy Ticket ",0Ah
					BYTE " <4> About Us   ",0Ah
					BYTE " <5> Contact Us ",0Ah
					BYTE " <6> Go Back   :",0
	Welcome BYTE "<----------------- [ WELCOME CUSTOMER ] ----------------->",0
	Buyticket BYTE "<----------------- [ BUY TICKET ] ----------------->",0
	ShowInfo2 BYTE "<----------------- [ SHOW INFO ] ----------------->",0
	ShowInfo Byte "   Time Slot         Normal Class        Gold Class",0
	space1 byte "          ",0
	space2 byte "               ",0
	INTERFACE_ADMIN BYTE "<----------------- [ ADMIN ] ----------------->",0Ah

					BYTE " <1> Movie ",0Ah
					BYTE " <2> Timings ",0Ah
					BYTE " <3> Show seats ",0Ah
					BYTE " <4> Price  ",0Ah
					BYTE " <5> Go Back   :",0
	show2 BYTE "The Shows are :",0
	Aboutus3 BYTE "Being the largest, purpose-built and standalone multiplex chain of Pakistan, ABC Cinemas promises its customers",0Ah
			 BYTE "a grandiose and larger than life experience like never bejfore. Having all its sites designed by world renowned ",0Ah
			 BYTE "cinema architects, Mesbur & Smith of Canada, and boasting top end 4K Digital projection systems custom designed",0Ah
			 BYTE "by Christie Digital Canada, ABC continues to stand out in the entertainment and recreational sector.In addition ",0Ah
			 BYTE "to this, all the screens of this brand have been outfitted by Asia’s number one cinema integration company called ",0Ah
			 BYTE "Eugentek Corporation, which is a crowning achievement of years of planning and execution. Comprising of the latest 3D",0Ah
			 BYTE "technology, custom designed Dolby 11.1 digital and sound systems for all theatre functionalities ABC continues",0Ah
			 BYTE "to be years ahead of any other cinema nationwide.",0
	Aboutus1 BYTE "<----------------- [ ABOUT US ] ----------------->",0
	Contactus1 BYTE "<----------------- [ CONTACT US ] ----------------->",0
	Contactus2 BYTE "For further information about movies you can download our Application(from the  Google Play Store or from ",0Ah
			BYTE "the iOS App Store) or contact us at 01234567896523",0			
	Options	BYTE " <1> Edit ",0Ah
			BYTE " <2> Go Back: ",0
	choice Byte "<1> Choice  :",0 
	Goback BYTE "<0> Go Back  :",0
	p1 byte "[ ---------------- << LOGIN ADMIN INTERFACE >> ---------------- ]",0
	p2 byte "Username: ",0
	p3 byte "Password: ",0
	p4 byte "Login Successful!",0
	askticket byte "Enter the number of tickets you want to purchase:",0
	thankyou byte "Thank you for selecting the show. Now we request you to select your type of seating",0
	Select byte "Select >",0
	SelectSeat byte "Select your seat ",0
	Enterrow byte "Please Enter The Row :",0
	Entercolumn byte "Please Enter the Column",0


	p5 byte "[-] ERROR! Username or password is incorrect, please try again... ",0
	pbook byte "[+] Seat booked SUCCESSFULLY! ",0
	pnbook byte "[*] Seat has been already booked ",0
	M1 byte "-None-",0
	M2 byte "-None-",0
	M3 byte "-None-",0
	M4 byte "-None-",0
	M5 byte "-None-",0
	PriceMN1 byte "-",0
	PriceMN2 byte "-",0
	PriceMN3 byte "-",0
	PriceMN4 byte "-",0
	PriceMN5 byte "-",0
	PriceMG1 byte "-",0
	PriceMG2 byte "-",0
	PriceMG3 byte "-",0
	PriceMG4 byte "-",0
	PriceMG5 byte "-",0
	TimeM1T1 byte "-Not Avaliable-",0
	TimeM1T2 byte "-Not Avaliable-",0
	TimeM1T3 byte "-Not Avaliable-",0
	TimeM1T4 byte "-Not Avaliable-",0
	TimeM2T1 byte "-Not Avaliable-",0
	TimeM2T2 byte "-Not Avaliable-",0
	TimeM2T3 byte "-Not Avaliable-",0
	TimeM2T4 byte "-Not Avaliable-",0
	TimeM3T1 byte "-Not Avaliable-",0
	TimeM3T2 byte "-Not Avaliable-",0
	TimeM3T3 byte "-Not Avaliable-",0
	TimeM3T4 byte "-Not Avaliable-",0
	TimeM4T1 byte "-Not Avaliable-",0
	TimeM4T2 byte "-Not Avaliable-",0
	TimeM4T3 byte "-Not Avaliable-",0
	TimeM4T4 byte "-Not Avaliable-",0
	TimeM5T1 byte "-Not Avaliable-",0
	TimeM5T2 byte "-Not Avaliable-",0
	TimeM5T3 byte "-Not Avaliable-",0
	TimeM5T4 byte "-Not Avaliable-",0
	password byte 20 DUP(?) 
	username byte 20 DUP(?) 
	one byte "1.",0
	two byte "2.",0
	three byte "3.",0
	four byte "4.",0
	five byte "5.",0
	showws byte "The Shows are :",0
	ask byte "Enter the name of movie :",0
	time byte "Timing Schedule :",0
	edittime byte "Enter The Time  :",0
	askprice byte "Enter The Price :",0
	au byte "admin",0
	ap byte "admin",0
	Price BYTE "<----------------- [ PRICE ] ----------------->",0
	temp byte ?
	Normal byte "1.Normal Class :",0
	Gold byte "2.Gold Class :",0
	SM1T1	byte 10 DUP (0) 
	Rowsize = ($ - SM1T1)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)

	SM1T2	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
	
	SM1T3	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)

	SM1T4	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)

	SM2T1	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)

	SM2T2	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
	
	SM2T3	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)

	SM2T4	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
	
	SM3T1	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)

	SM3T2	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
	
	SM3T4	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)

	SM4T1	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)

	SM4T2	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)

	SM4T3	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
	
	SM4T4	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)

	SM5T1	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)

	SM5T2	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)

	SM5T3	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
	
	SM5T4	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)

	SM3T3	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
	i byte ?
	j byte ?

	CH1 DWORD ?
	ADMIN_LOG_FLAG BYTE ?

.code
	MAIN PROC															;MAIN PROGRAM

		MAIN_L:	
			CALL MAIN_INTERFACE
			CALL READINT
			MOV CH1,EAX													;CH1 IS A CHOISE VAR

			CMP CH1,1
				JE ADMIN_L
			cmp CH1,2
			je C_l
			CMP CH1,0
				JE EXIT_MAIN
			ADMIN_L:
				CALL LOGINFUNC
				
				CMP ADMIN_LOG_FLAG,0
				JE ADMIN_L1
				JMP MAIN_L
			C_l:
				call customerinterface
			ADMIN_L1:
					
			jmp MAIN_L

		EXIT_MAIN:														;MAIN END
		EXIT
		MAIN ENDP

		MAIN_INTERFACE PROC												;MAIN INTTERFACE PROC
			CALL CLRSCR
			CALL CRLF
			MOV EDX, OFFSET Interface
			CALL WRITESTRING
			RET
			MAIN_INTERFACE ENDP

			

	LOGINFUNC proc
		Login1:
		call clrscr
		mov eax, 0
		mov ebx, 0
		mov ecx, 0
		mov edx, offset p1
		call writestring
		call crlf
		call CRLF
		
		mov edx, offset p2     
		call writestring
		mov ecx, 255

		mov edx, offset username		
		call readstring					;input username

		mov edx, offset p3
		call writestring
		mov ecx, 255

		mov edx, offset password
		call readstring					;input password

		call crlf

		mov edi, offset username
		mov esi, offset au
		
		mov ecx, lengthof au
		usernameloop:
			cmpsb
			jne logfail1
			loop usernameloop
		jmp s1
			logfail1:
			mov edx, offset p5
			call writestring
			call crlf
			MOV EAX, 3000
			CALL DELAY
			jmp Login1
		s1:
		mov esi, offset password
		mov edi, offset ap
		
		mov ecx, lengthof ap
		passwordloop:
			cmpsb
			jne logfail1
			loop passwordloop
		jmp s2
			mov edx, offset p5
			call writestring
			call crlf
			MOV EAX, 3000
			CALL DELAY
			jmp Login1
		s2:
		mov edx, offset p4
		call writestring
		call crlf
		call admininterface
		
		MOV ADMIN_LOG_FLAG ,1
		MOV EAX, 3000
		CALL DELAY
		ret
		LOGINFUNC endp

	bookseat proc
		push ebp
		mov ebp, esp
		mov ebx, [ebp + 8]
		mov eax, Rowsize
		mul i
		add ebx, eax
		movzx esi, j
		lea edx, [ebx + esi]
		call crlf
		mov eax, [edx]
		cmp eax, 1
		jne s1
			mov edx, offset pnbook
			call writestring
			call crlf
			jmp s2
		s1:
			mov bl, 1
			mov [edx], bl
			mov edx, offset pbook
			call writestring
			call crlf
		s2:
		pop ebp
		ret 4
		bookseat endp

	showseats proc
		push ebp
		call crlf
		mov ebp, esp
		mov eax, 0
		mov ebx, 0
		mov edx, 0
		mov esi, 0
		mov i, 0
		
		mov ecx, 5
		l1:
			mov j, 0
			push ecx
			mov ecx, 10
			l2:
				mov ebx, [ebp + 8]
				mov eax, Rowsize
				mul i
				add ebx, eax
				movzx esi, j
				mov al, [ebx + esi]
				call writedec
				mov al, ' '
				call writechar
				inc j
				loop l2
			call crlf
			inc i
			pop ecx
			loop l1		
		call crlf
		pop ebp
		ret 4
		showseats endp
	admininterface proc
	O:
	call clrscr
	mov edx,offset INTERFACE_ADMIN
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je O1
	cmp CH1,2
	je O2
	cmp CH1,3
	je O3
	cmp CH1,4
	je O4
	cmp CH1,5
	je Endd
	O3:
	L4:
	call clrscr
	mov edx,offset showws
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset M1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset M2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset M3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset M4
	call writestring
	call crlf
	mov edx,offset five
	call writestring
	mov edx,offset M5
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	call clrscr
	cmp CH1,1
	je B1
	cmp CH1,2
	je B2
	cmp CH1,3
	je B3
	cmp CH1,4
	je B4
	cmp CH1,5
	je B5
	B5:
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM5T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM5T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM5T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM5T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	cmp CH1,1
	je Sssss1
	cmp CH1,2
	je Sssss2
	cmp CH1,3
	je Sssss3
	cmp CH1,4
	je Sssss4
	Sssss4:
	push offset SM5T4
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	Sssss3:
	push offset SM5T3
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	Sssss2:
	push offset SM5T2
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	Sssss1:
	push offset SM5T1
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	B4:
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM4T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM4T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM4T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM4T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je Ssss1
	cmp CH1,2
	je Ssss2
	cmp CH1,3
	je Ssss3
	cmp CH1,4
	je Ssss4
	Ssss4:
	push offset SM4T4
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	Ssss3:
	push offset SM4T3
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	Ssss2:
	push offset SM4T2
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	Ssss1:
	push offset SM4T1
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	B3:
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM3T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM3T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM3T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM3T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je Sss1
	cmp CH1,2
	je Sss2
	cmp CH1,3
	je Sss3
	cmp CH1,4
	je Sss4
	Sss4:
	push offset SM3T4
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	Sss3:
	push offset SM3T3
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	Sss2:
	push offset SM3T2
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	Sss1:
	push offset SM3T1
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	B2:
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM2T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM2T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM2T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM2T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je Ss1
	cmp CH1,2
	je Ss2
	cmp CH1,3
	je Ss3
	cmp CH1,4
	je Ss4
	Ss4:
	push offset SM2T4
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	Ss3:
	push offset SM2T3
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	Ss2:
	push offset SM2T2
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	Ss1:
	push offset SM2T1
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	B1:
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM1T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM1T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM1T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM1T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je S1
	cmp CH1,2
	je S2
	cmp CH1,3
	je S3
	cmp CH1,4
	je S4
	S4:
	push offset SM1T4
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	S3:
	push offset SM1T3
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	S2:
	push offset SM1T2
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	S1:
	push offset SM1T1
	call showseats
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je O
	jmp L4
	O4:
	L3:
	call clrscr
	mov edx,offset showws
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset M1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset M2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset M3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset M4
	call writestring
	call crlf
	mov edx,offset five
	call writestring
	mov edx,offset M5
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je Price1
	cmp CH1,2
	je Price2
	cmp CH1,3
	je Price3
	cmp CH1,4
	je Price4
	cmp CH1,5
	je Price5
	Price5:
	call clrscr
	mov edx,offset Price
	call writestring
	call crlf
	mov edx,offset Normal
	call writestring
	mov edx,offset PriceMN5
	call writestring
	call crlf
	mov edx,offset Gold
	call writestring
	mov edx,offset PriceMG5
	call writestring
	call crlf
	mov edx,offset Options
	call writestring
	call readdec
	mov CH1,eax
	cmp Ch1,2
	je O
	call clrscr
	mov edx,offset Price
	call writestring
	call crlf
	mov edx,offset Normal
	call writestring
	mov edx,offset PriceMN5
	call writestring
	call crlf
	mov edx,offset Gold
	call writestring
	mov edx,offset PriceMG5
	call writestring
	call crlf
	mov edx,offset Choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je PMN5
	cmp CH1,2
	je PMG5
	PMG5:
	mov edx,offset askprice
	call writestring
	mov edx,offset PriceMG5
	mov ecx,255
	call readstring
	jmp Price2
	PMN5:
	mov edx,offset askprice
	call writestring
	mov edx,offset PriceMN5
	mov ecx,255
	call readstring
	jmp Price5
	Price4:
	call clrscr
	mov edx,offset Price
	call writestring
	call crlf
	mov edx,offset Normal
	call writestring
	mov edx,offset PriceMN4
	call writestring
	call crlf
	mov edx,offset Gold
	call writestring
	mov edx,offset PriceMG4
	call writestring
	call crlf
	mov edx,offset Options
	call writestring
	call readdec
	mov CH1,eax
	cmp Ch1,2
	je O
	call clrscr
	mov edx,offset Price
	call writestring
	call crlf
	mov edx,offset Normal
	call writestring
	mov edx,offset PriceMN4
	call writestring
	call crlf
	mov edx,offset Gold
	call writestring
	mov edx,offset PriceMG4
	call writestring
	call crlf
	mov edx,offset Choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je PMN4
	cmp CH1,2
	je PMG4
	PMG4:
	mov edx,offset askprice
	call writestring
	mov edx,offset PriceMG4
	mov ecx,255
	call readstring
	jmp Price4
	PMN4:
	mov edx,offset askprice
	call writestring
	mov edx,offset PriceMN4
	mov ecx,255
	call readstring
	jmp Price4
	Price3:
	call clrscr
	mov edx,offset Price
	call writestring
	call crlf
	mov edx,offset Normal
	call writestring
	mov edx,offset PriceMN3
	call writestring
	call crlf
	mov edx,offset Gold
	call writestring
	mov edx,offset PriceMG3
	call writestring
	call crlf
	mov edx,offset Options
	call writestring
	call readdec
	mov CH1,eax
	cmp Ch1,2
	je O
	call clrscr
	mov edx,offset Price
	call writestring
	call crlf
	mov edx,offset Normal
	call writestring
	mov edx,offset PriceMN3
	call writestring
	call crlf
	mov edx,offset Gold
	call writestring
	mov edx,offset PriceMG3
	call writestring
	call crlf
	mov edx,offset Choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je PMN3
	cmp CH1,2
	je PMG3
	PMG3:
	mov edx,offset askprice
	call writestring
	mov edx,offset PriceMG3
	mov ecx,255
	call readstring
	jmp Price3
	PMN3:
	mov edx,offset askprice
	call writestring
	mov edx,offset PriceMN3
	mov ecx,255
	call readstring
	jmp Price3
	Price2:
	call clrscr
	mov edx,offset Price
	call writestring
	call crlf
	mov edx,offset Normal
	call writestring
	mov edx,offset PriceMN2
	call writestring
	call crlf
	mov edx,offset Gold
	call writestring
	mov edx,offset PriceMG2
	call writestring
	call crlf
	mov edx,offset Options
	call writestring
	call readdec
	mov CH1,eax
	cmp Ch1,2
	je O
	call clrscr
	mov edx,offset Price
	call writestring
	call crlf
	mov edx,offset Normal
	call writestring
	mov edx,offset PriceMN2
	call writestring
	call crlf
	mov edx,offset Gold
	call writestring
	mov edx,offset PriceMG2
	call writestring
	call crlf
	mov edx,offset Choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je PMN2
	cmp CH1,2
	je PMG2
	PMG2:
	mov edx,offset askprice
	call writestring
	mov edx,offset PriceMG2
	mov ecx,255
	call readstring
	jmp Price2
	PMN2:
	mov edx,offset askprice
	call writestring
	mov edx,offset PriceMN2
	mov ecx,255
	call readstring
	jmp Price2
	Price1:
	call clrscr
	mov edx,offset Price
	call writestring
	call crlf
	mov edx,offset Normal
	call writestring
	mov edx,offset PriceMN1
	call writestring
	call crlf
	mov edx,offset Gold
	call writestring
	mov edx,offset PriceMG1
	call writestring
	call crlf
	mov edx,offset Options
	call writestring
	call readdec
	mov CH1,eax
	cmp Ch1,2
	je O
	call clrscr
	mov edx,offset Price
	call writestring
	call crlf
	mov edx,offset Normal
	call writestring
	mov edx,offset PriceMN1
	call writestring
	call crlf
	mov edx,offset Gold
	call writestring
	mov edx,offset PriceMG1
	call writestring
	call crlf
	mov edx,offset Choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je PMN1
	cmp CH1,2
	je PMG2
	PMG1:
	mov edx,offset askprice
	call writestring
	mov edx,offset PriceMG1
	mov ecx,255
	call readstring
	jmp Price1
	PMN1:
	mov edx,offset askprice
	call writestring
	mov edx,offset PriceMN1
	mov ecx,255
	call readstring
	jmp Price1















	jmp L3



	O2:
	L2:
	call clrscr
	mov edx,offset showws
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset M1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset M2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset M3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset M4
	call writestring
	call crlf
	mov edx,offset five
	call writestring
	mov edx,offset M5
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	call clrscr
	cmp CH1,1
	je T1
	cmp CH1,2
	je T2
	cmp CH1,3
	je T3
	cmp CH1,4
	je T4
	cmp CH1,5
	je T5
	T5:
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM5T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM5T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM5T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM5T4
	call writestring
	call crlf
	mov edx,offset options
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,2
	je O
	call clrscr
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM5T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM5T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM5T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM5T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	mov edx,offset Edittime
	call writestring
	cmp CH1,1
	je M5T1
	cmp CH1,2
	je M5T2
	cmp CH1,3
	je M5T3
	cmp CH1,4
	je M5T4
	M5T4:
	mov edx,offset TimeM5T4
	mov ecx,255
	call readstring
	call clrscr
	jmp T5
	M5T3:
	mov edx,offset TimeM5T3
	mov ecx,255
	call readstring
	call clrscr
	jmp T5
	M5T2:
	mov edx,offset TimeM5T2
	mov ecx,255
	call readstring
	call clrscr
	jmp T5
	M5T1:
	mov edx,offset TimeM5T1
	mov ecx,255
	call readstring
	call clrscr
	jmp T5
	jmp L2
	T4:
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM4T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM4T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM4T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM4T4
	call writestring
	call crlf
	mov edx,offset options
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,2
	je O
	call clrscr
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM4T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM4T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM4T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM4T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	mov edx,offset Edittime
	call writestring
	cmp CH1,1
	je M4T1
	cmp CH1,2
	je M4T2
	cmp CH1,3
	je M4T3
	cmp CH1,4
	je M4T4
	M4T4:
	mov edx,offset TimeM4T4
	mov ecx,255
	call readstring
	call clrscr
	jmp T4
	M4T3:
	mov edx,offset TimeM4T3
	mov ecx,255
	call readstring
	call clrscr
	jmp T4
	M4T2:
	mov edx,offset TimeM4T2
	mov ecx,255
	call readstring
	call clrscr
	jmp T4
	M4T1:
	mov edx,offset TimeM4T1
	mov ecx,255
	call readstring
	call clrscr
	jmp T4
	jmp L2
	T3:
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM3T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM3T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM3T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM3T4
	call writestring
	call crlf
	mov edx,offset options
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,2
	je O
	call clrscr
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM3T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM3T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM3T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM3T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	mov edx,offset Edittime
	call writestring
	cmp CH1,1
	je M3T1
	cmp CH1,2
	je M3T2
	cmp CH1,3
	je M3T3
	cmp CH1,4
	je M3T4
	M3T4:
	mov edx,offset TimeM3T4
	mov ecx,255
	call readstring
	call clrscr
	jmp T3
	M3T3:
	mov edx,offset TimeM3T3
	mov ecx,255
	call readstring
	call clrscr
	jmp T3
	M3T2:
	mov edx,offset TimeM3T2
	mov ecx,255
	call readstring
	call clrscr
	jmp T3
	M3T1:
	mov edx,offset TimeM3T1
	mov ecx,255
	call readstring
	call clrscr
	jmp T3
	jmp L2



	T2:
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM2T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM2T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM2T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM2T4
	call writestring
	call crlf
	mov edx,offset options
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,2
	je O
	call clrscr
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM2T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM2T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM2T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM2T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	mov edx,offset Edittime
	call writestring
	cmp CH1,1
	je M2T1
	cmp CH1,2
	je M2T2
	cmp CH1,3
	je M2T3
	cmp CH1,4
	je M2T4
	M2T4:
	mov edx,offset TimeM2T4
	mov ecx,255
	call readstring
	call clrscr
	jmp T2
	M2T3:
	mov edx,offset TimeM2T3
	mov ecx,255
	call readstring
	call clrscr
	jmp T2
	M2T2:
	mov edx,offset TimeM2T2
	mov ecx,255
	call readstring
	call clrscr
	jmp T2
	M2T1:
	mov edx,offset TimeM2T1
	mov ecx,255
	call readstring
	call clrscr
	jmp T2
	jmp L2
	T1:
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM1T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM1T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM1T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM1T4
	call writestring
	call crlf
	mov edx,offset options
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,2
	je O
	call clrscr
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM1T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM1T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM1T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM1T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	mov edx,offset Edittime
	call writestring
	cmp CH1,1
	je M1T1
	cmp CH1,2
	je M1T2
	cmp CH1,3
	je M1T3
	cmp CH1,4
	je M1T4
	M1T4:
	mov edx,offset TimeM1T4
	mov ecx,255
	call readstring
	call clrscr
	jmp T1
	M1T3:
	mov edx,offset TimeM1T3
	mov ecx,255
	call readstring
	call clrscr
	jmp T1
	M1T2:
	mov edx,offset TimeM1T2
	mov ecx,255
	call readstring
	call clrscr
	jmp T1
	M1T1:
	mov edx,offset TimeM1T1
	mov ecx,255
	call readstring
	call clrscr
	jmp T1










	jmp L2











	O1:
	call clrscr
	L1:
	mov edx,offset showws
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset M1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset M2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset M3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset M4
	call writestring
	call crlf
	mov edx,offset five
	call writestring
	mov edx,offset M5
	call writestring
	call crlf
	mov edx,offset Options
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,2
	je O
	call clrscr
	mov edx,offset showws
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset M1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset M2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset M3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset M4
	call writestring
	call crlf
	mov edx,offset five
	call writestring
	mov edx,offset M5
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov edx,offset ask
	call writestring
	mov CH1,eax
	cmp CH1,1
	je E1
	cmp CH1,2
	je E2
	cmp CH1,3
	je E3
	cmp CH1,4
	je E4
	cmp CH1,5
	je E5
	E5:
	mov edx,offset M5
	mov ecx,255
	call readstring
	call clrscr
	E4:
	mov edx,offset M4
	mov ecx,255
	call readstring
	call clrscr
	jmp L1
	E3:
	mov edx,offset M3
	mov ecx,255
	call readstring
	call clrscr
	jmp L1
	E2:
	mov edx,offset M2
	mov ecx,255
	call readstring
	call clrscr
	jmp L1
	E1:
	mov edx,offset M1
	mov ecx,255
	call readstring
	call clrscr
	jmp L1
	Endd:
	ret

	admininterface ENDP
	customerinterface Proc
	L1:
	call clrscr
	mov edx,offset INTERFACE_CUSTOMER
	call writestring
	call readdec

	mov CH1,eax
	cmp CH1,1
	je O1
	cmp CH1,2
	je O2
	cmp CH1,3
	je O3
	cmp CH1,4
	je O4
	cmp CH1,6
	je O6
	O5:
	call clrscr
	mov edx,offset Contactus1
	call writestring
	call crlf
	mov edx,offset Contactus2
	call writestring
	call crlf
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	jmp L1
	O4:
	call clrscr
	mov edx,offset Aboutus1
	call writestring
	call crlf
	mov edx,offset Aboutus3
	call writestring
	call crlf
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	jmp L1
	O3:
	call clrscr
	mov edx,offset Buyticket
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset M1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset M2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset M3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset M4
	call writestring
	call crlf
	mov edx,offset five
	call writestring
	mov edx,offset M5
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je BI1
	cmp CH1,2
	je BI2
	cmp CH1,3
	je BI3
	cmp CH1,4
	je BI4
	cmp CH1,5
	je BI5
	BI5:
	call clrscr
	mov edx,offset Buyticket
	call writestring
	call crlf
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM5T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM5T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM5T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM5T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je BTM5T1
	cmp CH1,2
	je BTM5T2
	cmp CH1,3
	je BTM5T3
	cmp CH1,4
	je BTM5T4
	BTM5T4:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN5
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG5
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM5T4
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM5T4
	call bookseat
	push offset SM5T4
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM5T3:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN5
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG5
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM5T3
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM5T3
	call bookseat
	push offset SM5T3
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM5T2:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN5
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG5
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM5T2
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM5T2
	call bookseat
	push offset SM5T2
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM5T1:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN5
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG5
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM5T1
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM5T1
	call bookseat
	push offset SM5T1
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BI4:
	call clrscr
	mov edx,offset Buyticket
	call writestring
	call crlf
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM4T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM4T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM4T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM4T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je BTM4T1
	cmp CH1,2
	je BTM4T2
	cmp CH1,3
	je BTM4T3
	cmp CH1,4
	je BTM4T4
	BTM4T4:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN4
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG4
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM4T4
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM4T4
	call bookseat
	push offset SM4T4
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM4T3:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN4
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG4
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM4T3
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM4T3
	call bookseat
	push offset SM4T3
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM4T2:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN4
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG4
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM4T2
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM4T2
	call bookseat
	push offset SM4T2
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM4T1:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN4
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG4
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM4T1
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM4T1
	call bookseat
	push offset SM4T1
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BI3:
	call clrscr
	mov edx,offset Buyticket
	call writestring
	call crlf
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM3T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM3T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM3T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM3T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je BTM3T1
	cmp CH1,2
	je BTM3T2
	cmp CH1,3
	je BTM3T3
	cmp CH1,4
	je BTM3T4
	BTM3T4:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN3
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG3
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM3T4
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM3T4
	call bookseat
	push offset SM3T4
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM3T3:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN3
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG3
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM3T3
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM3T3
	call bookseat
	push offset SM3T3
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM3T2:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN3
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG3
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM3T2
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM3T2
	call bookseat
	push offset SM3T2
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM3T1:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN3
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG3
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM3T1
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM3T1
	call bookseat
	push offset SM3T1
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BI2:
	call clrscr
	mov edx,offset Buyticket
	call writestring
	call crlf
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM2T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM2T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM2T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM2T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je BTM2T1
	cmp CH1,2
	je BTM2T2
	cmp CH1,3
	je BTM2T3
	cmp CH1,4
	je BTM2T4
	BTM2T4:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN2
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG2
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM2T4
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM2T4
	call bookseat
	push offset SM2T4
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM2T3:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN2
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG2
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM2T3
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM2T3
	call bookseat
	push offset SM2T3
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM2T2:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN2
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG2
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM2T2
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM2T2
	call bookseat
	push offset SM2T2
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM2T1:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN2
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG2
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM2T1
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM2T1
	call bookseat
	push offset SM2T1
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BI1:
	call clrscr
	mov edx,offset Buyticket
	call writestring
	call crlf
	mov edx,offset Time
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM1T1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM1T2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM1T3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM1T4
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je BTM1T1
	cmp CH1,2
	je BTM1T2
	cmp CH1,3
	je BTM1T3
	cmp CH1,4
	je BTM1T4
	BTM1T4:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN1
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG1
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM1T4
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM1T4
	call bookseat
	push offset SM1T4
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM1T3:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN1
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG1
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM5T3
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM1T3
	call bookseat
	push offset SM1T3
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM1T2:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN1
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG1
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM1T2
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM1T2
	call bookseat
	push offset SM1T2
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	BTM1T1:
	mov edx,offset askticket
	call writestring
	call readdec
	mov edx,offset thankyou
	call writestring
	call crlf
	mov edx,offset normal
	call writestring
	mov edx,offset PriceMN1
	call writestring
	call crlf
	mov edx,offset gold
	call writestring
	mov edx,offset PriceMG1
	call writestring
	call crlf
	mov edx,offset Select
	call writestring
	call readdec
	push offset SM1T1
	call showseats
	mov edx,offset EnterRow
	call writestring
	call readdec
	sub al,1
	mov i,al
	mov edx,offset EnterColumn
	call writestring
	call readdec
	sub al,1
	mov j,al
	push offset SM1T1
	call bookseat
	push offset SM1T1
	call showseats
	mov edx,offset GoBack
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	O2:
	call clrscr
	mov edx,offset Welcome
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset M1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset M2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset M3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset M4
	call writestring
	call crlf
	mov edx,offset five
	call writestring
	mov edx,offset M5
	call writestring
	call crlf
	mov edx,offset choice
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,1
	je SI1
	cmp CH1,2
	je SI2
	cmp CH1,3
	je SI3
	cmp CH1,4
	je SI4
	cmp CH1,5
	je SI5
	SI1:
	call clrscr
	mov edx,offset ShowInfo2
	call writestring
	call crlf
	mov edx,offset ShowInfo
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM1T1
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG1
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN1
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM1T2
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG1
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN1
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM1T3
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG1
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN1
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM1T4
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG1
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN1
	call writestring
	call crlf
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	SI2:
	call clrscr
	mov edx,offset ShowInfo2
	call writestring
	call crlf
	mov edx,offset ShowInfo
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM2T1
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG2
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN2
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM2T2
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG2
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN2
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM2T3
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG2
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN2
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM2T4
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG2
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN2
	call writestring
	call crlf
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	SI3:
	call clrscr
	mov edx,offset ShowInfo2
	call writestring
	call crlf
	mov edx,offset ShowInfo
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM3T1
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG3
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN3
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM3T2
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG3
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN3
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM3T3
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG3
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN3
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM3T4
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG3
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN3
	call writestring
	call crlf
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	SI4:
	call clrscr
	mov edx,offset ShowInfo2
	call writestring
	call crlf
	mov edx,offset ShowInfo
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM4T1
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG4
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN4
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM4T2
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG4
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN4
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM4T3
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG4
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN4
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM4T4
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG4
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN4
	call writestring
	call crlf
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	SI5:
	call clrscr
	mov edx,offset ShowInfo2
	call writestring
	call crlf
	mov edx,offset ShowInfo
	call writestring
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset TimeM5T1
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG5
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN5
	call writestring
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset TimeM5T2
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG5
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN5
	call writestring
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset TimeM5T3
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG5
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN5
	call writestring
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset TimeM5T4
	call writestring
	mov edx,offset space1
	call writestring
	mov edx,offset PriceMG5
	call writestring
	mov edx,offset space2
	call writestring
	mov edx,offset PriceMN5
	call writestring
	call crlf
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp CH1,0
	je L1
	O1:
	call clrscr
	mov edx,offset Welcome
	call writestring
	call crlf
	call crlf
	mov edx,offset show2
	call writestring
	call crlf
	call crlf
	mov edx,offset one
	call writestring
	mov edx,offset M1
	call writestring
	call crlf
	call crlf
	mov edx,offset two
	call writestring
	mov edx,offset M2
	call writestring
	call crlf
	call crlf
	mov edx,offset three
	call writestring
	mov edx,offset M3
	call writestring
	call crlf
	call crlf
	mov edx,offset four
	call writestring
	mov edx,offset M4
	call writestring
	call crlf
	call crlf
	mov edx,offset five
	call writestring
	mov edx,offset M5
	call writestring
	call crlf
	call crlf
	mov edx,offset Goback
	call writestring
	call readdec
	mov CH1,eax
	cmp Ch1,1
	jmp L1
	O6:

	ret
customerinterface endp
	end main
