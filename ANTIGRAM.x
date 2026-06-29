                                           ANTIGRAM: 
                                   ========================
                                   
                                   
------->>>>>  Two words that are anagrams of each other but have OPPOSITE meanings
________________________________________________________________________________________________



#include <stdio.h>

#include <string.h>

#include <ctype.h>

int areAnagrams(char *s1, char *s2)
{
    int freq[26] = {0};
    
    for (int i = 0; s1[i]; i++)
    
        if (isalpha(s1[i])) freq[tolower(s1[i]) - 'a']++;
        
    for (int i = 0; s2[i]; i++)
    
        if (isalpha(s2[i])) freq[tolower(s2[i]) - 'a']--;
        
    for (int i = 0; i < 26; i++)
    
        if (freq[i] != 0) return 0;
        
    return 1;
}

// Demo list of known antigram pairs

void showKnownAntigrams()
{
    printf("\n--- Known Antigram Pairs ---\n");
    
    printf("  %-15s <-> %s\n", "united",   "untied");
    
    printf("  %-15s <-> %s\n", "restful",  "fluster");
    
    printf("  %-15s <-> %s\n", "santa",    "satan");
    
    printf("  %-15s <-> %s\n", "filled",   "ill-fed");
    
    printf("  %-15s <-> %s\n", "good",     "godo");
    
    printf("  %-15s <-> %s\n", "antagonist","protagonist" );
    
    printf("----------------------------\n\n");
    
}

int main() 
{
    char s1[100], s2[100];

    showKnownAntigrams();

    printf("Enter word 1: ");
    
    fgets(s1, sizeof(s1), stdin);
    
    s1[strcspn(s1, "\n")] = '\0';
    

    printf("Enter word 2: ");
    
    fgets(s2, sizeof(s2), stdin);
    
    s2[strcspn(s2, "\n")] = '\0';

    if (areAnagrams(s1, s2))
    
        printf("\"%s\" and \"%s\" are anagrams of each other.\n"
        
               "If they have opposite meanings, they form an ANTIGRAM!\n", s1, s2);
    else
        printf("\"%s\" and \"%s\" are NOT anagrams, so they cannot be antigrams.\n", s1, s2);
        

    return 0;
}



output:

-----Known antigram pairs

      united -----> untied
      

Enter word 1: bad
Enter word 2: dab

bad and dab are anagrams of each other



