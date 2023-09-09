fibo_1 = newFibonacci(1, 10);
disp(fibo_1);
fibo_2 = newFibonacci(2, 10);
disp(fibo_2);
fibo_3 = newFibonacci(4, 13);
disp(fibo_3);
pal_1 = newPalindrome('racecar');
disp(pal_1);
pal_2 = newPalindrome('pop');
disp(pal_2);
pal_3 = newPalindrome('anna');
disp(pal_3);
pal_4 = newPalindrome('aibohphobia');
disp(pal_4);
pal_5 = newPalindrome('you');
disp(pal_5);
pal_6 = newPalindrome('spotify');
disp(pal_6);

function nF = newFibonacci(s, e)
   nF = [];
   a = 0;
   b = 1;
   c = 0;
   if a >= s
           if a <= e
               nF = [nF, a];
           end
   end
   if b >= s
           if b <= e
               nF = [nF, b];
           end
   end
   while c <= e
       c = a + b;
       if c >= s
           if c <= e
               nF = [nF, c];
           end
       end
       a = b;
       b = c;
   end
end

function p = newPalindrome(word)
   for i = 1:length(word) / 2
       first_char = word(i);
       second_char = word(length(word) - i + 1);
        if strcmp(first_char, second_char) == 0
            p = [word ' is not a palindrome.'];
            break
        end
       p = [word ' is a palindrome.'];
   end
end