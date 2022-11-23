include irvine32.inc
.data
	Interface BYTE " <------------- [ MAIN INTERFACE ] ---------------> ",0ah
			  BYTE " [ 1 ] ADMIN_LOGIN ",0ah
			  BYTE " [ 2 ] USER	",0ah
			  BYTE " [ 0 ] EXIT			:",0	


	INTERFACE_ADMIN BYTE "<----------------- [ ADMIN ] ----------------->",OAh
					BYTE " [ 1 ] SHOW SEATS ",0Ah
					BYTE " [ 2 ] MOVIES ",OAh

	p1 byte "[ ---------------- << LOGIN ADMIN INTERFACE >> ---------------- ]",0
	p2 byte "Username: ",0
	p3 byte "Password: ",0
	p4 byte "Login Successful!",0


	p5 byte "[-] ERROR! Username or password is incorrect, please try again... ",0
	pbook byte "[+] Seat booked SUCCESSFULLY! ",0
	pnbook byte "[*] Seat has been already booked ",0

	password byte 20 DUP(?) 
	username byte 20 DUP(?) 

	au byte "admin",0
	ap byte "admin",0
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

			ADMIN_L:
				CALL LOGINFUNC
				CMP ADMIN_LOG_FLAG,0
				JE ADMIN_L1
				JMP MAIN_L

				ADMIN_L1:
					
				


			CMP CH1,0
				JE EXIT_MAIN

			LOOP MAIN_L

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
	end main
