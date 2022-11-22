include irvine32.inc
.data
	p1 byte "----------------Login----------------",0
	p2 byte "Username: ",0
	p3 byte "Password: ",0
	p4 byte "Login Successful!",0
	p5 byte "Error! Username or password is incorrect, please try again...",0
	pbook byte "Seat booked successfully!",0
	pnbook byte "Seat has been already booked",0

	password byte 30 DUP(?) 
	username byte 30 DUP(?) 

	au byte "admin"
	ap byte "admin"
	seats	byte 10 DUP (0) 
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
			byte 10 DUP (0)
	i byte ?
	j byte ?

.code
	main proc
		call loginfunc
		call showseats
		mov i, 3
		mov j, 2
		call bookseat
		call showseats
		mov i, 3
		mov j, 2
		call bookseat
		call showseats
		mov i, 4
		mov j, 9
		call bookseat
		call showseats
		exit
		main endp

	loginfunc proc
		l1:
		mov eax, 0
		mov ebx, 0
		mov ecx, 0
		mov edx, offset p1
		call writestring
		call crlf

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

		mov esi, offset username
		mov edi, offset au
		cmpsb
		je s1
			mov edx, offset p5
			call writestring
			call crlf
			jmp l1
		s1:
		mov esi, offset password
		mov edi, offset ap
		cmpsb
		je s2
			mov edx, offset p5
			call writestring
			call crlf
			jmp l1
		s2:
		mov edx, offset p4
		call writestring
		call crlf
		ret
		loginfunc endp

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
