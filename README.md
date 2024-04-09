# HASKELL EPITECH PROJECT

This repository stores every haskell projects i've made at Epitech. 

## Wolfram

This project is the first haskell project i made in Haskell.
It is a recreation of Wolfram's Elementary Cellular Automata.

This program works with every rules from 0 to 255 and with differents bonuses, here are every rules that you can use :

```---rule [0 - 255]``` : (MANDATORY) explains the set of rules that is gonna be followed
<br>
```--window [number]``` : changes the overall size of the diagram
<br>
```--start [number]``` : starts printing after the numberth generation
<br>
```--move [number]``` : shifts the whole diagram by number spaces
<br>
```--lines [number]``` : stop generating after number of occurences

And here is how to use it :

#### Usgae :

```bash

> make re

     P R O J E C T   R E C O M P I L E D

> ./wolfram --rule 90 --window 80 --lines 50
                                                       *                                                       
                                                      * *                                                      
                                                     *   *                                                     
                                                    * * * *                                                    
                                                   *       *                                                   
                                                  * *     * *                                                  
                                                 *   *   *   *                                                 
                                                * * * * * * * *                                                
                                               *               *                                               
                                              * *             * *                                              
                                             *   *           *   *                                             
                                            * * * *         * * * *                                            
                                           *       *       *       *                                           
                                          * *     * *     * *     * *                                          
                                         *   *   *   *   *   *   *   *                                         
                                        * * * * * * * * * * * * * * * *                                        
                                       *                               *                                       
                                      * *                             * *                                      
                                     *   *                           *   *                                     
                                    * * * *                         * * * *                                    
                                   *       *                       *       *                                   
                                  * *     * *                     * *     * *                                  
                                 *   *   *   *                   *   *   *   *                                 
                                * * * * * * * *                 * * * * * * * *                                
                               *               *               *               *                               
                              * *             * *             * *             * *                              
                             *   *           *   *           *   *           *   *                             
                            * * * *         * * * *         * * * *         * * * *                            
                           *       *       *       *       *       *       *       *                           
                          * *     * *     * *     * *     * *     * *     * *     * *                          
                         *   *   *   *   *   *   *   *   *   *   *   *   *   *   *   *                         
                        * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *                        
                       *                                                               *                       
                      * *                                                             * *                      
                     *   *                                                           *   *                     
                    * * * *                                                         * * * *                    
                   *       *                                                       *       *                   
                  * *     * *                                                     * *     * *                  
                 *   *   *   *                                                   *   *   *   *                 
                * * * * * * * *                                                 * * * * * * * *                
               *               *                                               *               *               
              * *             * *                                             * *             * *              
             *   *           *   *                                           *   *           *   *             
            * * * *         * * * *                                         * * * *         * * * *            
           *       *       *       *                                       *       *       *       *           
          * *     * *     * *     * *                                     * *     * *     * *     * *          
         *   *   *   *   *   *   *   *                                   *   *   *   *   *   *   *   *         
        * * * * * * * * * * * * * * * *                                 * * * * * * * * * * * * * * * *        
       *                               *                               *                               *       
      * *                             * *                             * *                             * *      
     *   *                           *   *                           *   *                           *   *     
    * * * *                         * * * *                         * * * *                         * * * *    
   *       *                       *       *                       *       *                       *       *   
  * *     * *                     * *     * *                     * *     * *                     * *     * *  
 *   *   *   *                   *   *   *   *                   *   *   *   *                   *   *   *   * 
* * * * * * * *                 * * * * * * * *                 * * * * * * * *                 * * * * * * * *

```

## imageCompressor

This project is a use case of (lossy) k-Means algorythm.
Take an image (png, jpg) and give it as paramater and the program will shrink the number of colors to the number you want.
If you want your image to have only 3 colors, you can with this project !

Here is the arguments and rules you need to bring :

```-n [clusters]``` : kMeans's synthax for the number of colors you want
<br>
```-l [convergence limit]``` : the precision you want for your program
<br>
```--f [path/to/file]``` : source file (png, jpg, ...)


Here is how to use it :

#### Usage


***You can use test.sh to make your life easier or make every step by hand if you want to understand the process.***

<br>

- TEST.SH
```bash
> make re

     P R O J E C T   R E C O M P I L E D

> ./test.sh [filePath] [clusters] [convergence limit]
```
<br>

- BY HAND
```bash
> make re

     P R O J E C T   R E C O M P I L E D

> ./img2txt [filePath] .ic_converted_file
> ./imageCompressor -n [clusters] -l [convergence limit] -f .ic_converted_file > .ic_output_file
> ./txt2img .ic_output_file output.png
```

And you can see your file (output.png)
