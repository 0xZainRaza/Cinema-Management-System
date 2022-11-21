include irvine32.inc
.data
	p1 byte "----------------Login----------------",0
	p2 byte "Username: ",0
	p3 byte "Password: ",0
	p4 byte "Login Successful!",0
	p5 byte "Error! Username or password is incorrect, please try again...",0

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
		
		mov ecx, 5
		l1:
			push ecx
			mov i, cl
			mov ecx, 10
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
				loop l2
			call crlf
			pop ecx
			loop l1		
		ret
		showseats endp
	end main
