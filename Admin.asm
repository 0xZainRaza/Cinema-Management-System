include irvine32.inc
.data
	Interface BYTE " <------------- [ MAIN INTERFACE ] ---------------> ",0ah
			  BYTE "  <1> Admin login ",0ah
			  BYTE "  <2> Customer	",0ah
			  BYTE "  <0> Exit		 :",0	


	INTERFACE_ADMIN BYTE "<----------------- [ ADMIN ] ----------------->",0Ah
					BYTE " <1> Movie ",0Ah
					BYTE " <2> Timings ",0Ah
					BYTE " <3> Show seats ",0Ah
					BYTE " <4> Price  ",0Ah
					BYTE " <5> Go Back   :",0
	Options	BYTE " <1> Edit ",0Ah
			BYTE " <2> Go Back: ",0
	choice Byte "<1> Choice  :",0 

	p1 byte "[ ---------------- << LOGIN ADMIN INTERFACE >> ---------------- ]",0
	p2 byte "Username: ",0
	p3 byte "Password: ",0
	p4 byte "Login Successful!",0
	

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
	seats	byte 10 DUP (0) 
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

			CMP CH1,0
				JE EXIT_MAIN
			ADMIN_L:
				CALL LOGINFUNC
				
				CMP ADMIN_LOG_FLAG,0
				JE ADMIN_L1
				JMP MAIN_L

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
		l1:
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
		cmpsb
		je s1
			mov edx, offset p5
			call writestring
			call crlf
			MOV EAX, 3000
			CALL DELAY
			jmp l1
		s1:
		mov esi, offset password
		mov edi, offset ap
		cmpsb
		je s2
			mov edx, offset p5
			call writestring
			call crlf
			MOV EAX, 3000
			CALL DELAY
			jmp l1
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

	showseats proc
		mov eax, 0
		mov ebx, 0
		mov edx, 0
		mov esi, 0
		call crlf

		mov ecx, 4
		l1:
			push ecx
			mov i, cl
			mov ecx, 9
			l2:
				mov j, cl
				mov ebx, offset seats
				mov eax, 10
				mul i
				add ebx, eax
				movzx esi, j
				mov al, [ebx + esi]
				call writedec
				mov al, ' '
				call writechar
				dec ecx
				cmp ecx, 0
				jge l2
			call crlf
			pop ecx
			dec ecx
			cmp ecx, 0
			jge l1
		ret
		showseats endp

	bookseat proc
		mov ebx, offset seats
		mov eax, 10
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
		ret
		bookseat endp
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
	cmp CH1,4
	je O4
	cmp CH1,5
	je Endd
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
	end main
