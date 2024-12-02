mov ecx, [size_var] ; Load the size of the array
mov eax, [ebx+ecx*4] ; Accessing memory only if ecx is less than the size of array
jg check_bound ; jump to check_bound label
; ...rest of the code...
check_bound:
 cmp ecx,0 ;Comparing ecx with 0
jle error_handling ;Jump to error handling if ecx is less than 0
 cmp ecx,[size_var] ;Comparing ecx with size_var
jge error_handling ;Jump to error handling if ecx is greater than or equal to size_var
 ; continue execution if bounds are valid