.globl classify

.text
# ==============================================================================
# COMMAND LINE ARGUMENTS
# ==============================================================================
# Args:
#   a0 (int)        argc
#   a1 (char**)     argv
#   a1[1] (char*)   pointer to the filepath string of m0
#   a1[2] (char*)   pointer to the filepath string of m1
#   a1[3] (char*)   pointer to the filepath string of input matrix
#   a1[4] (char*)   pointer to the filepath string of output file
#   a2 (int)        silent mode, if this is 1, you should not print
#                   anything. Otherwise, you should print the
#                   classification and a newline.
# Returns:
#   a0 (int)        Classification
# Exceptions:
#   - If there are an incorrect number of command line args,
#     this function terminates the program with exit code 31
#   - If malloc fails, this function terminates the program with exit code 26
#
# Usage:
#   main.s <M0_PATH> <M1_PATH> <INPUT_PATH> <OUTPUT_PATH>
# ==============================================================================
# 1. Read three matrices m0, m1, and input from files. 
#    Their filepaths are provided as arguments. You will need to allocate space 
#    for the pointer arguments to read_matrix, since that function is expecting 
#    a pointer to allocated memory.
# 2. Compute h = matmul(m0, input). You will probably need to malloc space to fit h.
# 3. Compute h = relu(h). Remember that relu is performed in-place.
# 4. Compute o = matmul(m1, h) and write the resulting matrix to the output file. 
#    The output filepath is provided as an argument.
# 5. Compute and return argmax(o). If the print argument is set to 0, then also 
#    print out argmax(o) and a newline character.
# 6. Free any data you allocated with malloc. This includes any heap blocks 
#    allocated from calling read_matrix.
# 7. Remember to put the return value, argmax(o), in the appropriate register 
#    before returning.
# ==============================================================================
classify:
    addi sp, sp, -44
    sw ra, 0(sp)
    sw s0, 4(sp)
    sw s1, 8(sp)
    sw s2, 12(sp)
    sw s3, 16(sp)
    sw s4, 20(sp)
    sw s5, 24(sp)
    sw s6, 28(sp)
    sw s7, 32(sp)
    sw s8, 36(sp)
    sw s9, 40(sp)

# ==============================================================================
#   0.  Check the number of the arguments
# ==============================================================================
    addi t0, zero, 5
    bne a0, t0, arguments_error
# ==============================================================================

# ==============================================================================
#   1.1 Read pretrained m0
# ==============================================================================
    
# ==============================================================================


# ==============================================================================
#   1.2 Read pretrained m1
# ==============================================================================
    
# ==============================================================================


# ==============================================================================
#   1.3 Read input matrix
# ==============================================================================
    
# ==============================================================================


# ==============================================================================
#   2. Compute h = matmul(m0, input)
# ==============================================================================
    
# ==============================================================================


# ==============================================================================
#   3. Compute h = relu(h)
# ==============================================================================
    
# ==============================================================================


# ==============================================================================
#   4. Compute o = matmul(m1, h)
# ==============================================================================

# ==============================================================================


    # Write output matrix o


    # Compute and return argmax(o)


    # If enabled, print argmax(o) and newline



    lw ra, 0(sp)
    lw s0, 4(sp)
    lw s1, 8(sp)
    lw s2, 12(sp)
    lw s3, 16(sp)
    lw s4, 20(sp)
    lw s5, 24(sp)
    lw s6, 28(sp)
    lw s7, 32(sp)
    lw s8, 36(sp)
    lw s9, 40(sp)
    addi sp, sp, 44

    jr ra


malloc_error:
    li a0, 26
    j exit


arguments_error:
    li a0, 31
    j exit