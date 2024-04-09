# Wolfram

A recreation of Wolfram's Elementary Cellular Automata.

This program works with every rules from 0 to 255 and with differents bonuses


```---rule [0 - 255]``` : (MANDATORY) explains the set of rules that is gonna be followed
<br>
```--window [number]``` : changes the overall size of the diagram
<br>
```--start [number]``` : starts printing after the numberth generation
<br>
```--move [number]``` : shifts the whole diagram by number spaces
<br>
```--lines [number]``` : stop generating after number of occurences

Example :

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
