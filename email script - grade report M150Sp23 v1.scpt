FasdUAS 1.101.10   ��   ��    k             l     ��  ��    Q K script to send a personalized uniform email to a xollection on individuals     � 	 	 �   s c r i p t   t o   s e n d   a   p e r s o n a l i z e d   u n i f o r m   e m a i l   t o   a   x o l l e c t i o n   o n   i n d i v i d u a l s   
  
 l     ��  ��    y s adapted from from https://stackoverflow.com/questions/15386794/applescript-for-sending-emails-from-a-list-in-excel     �   �   a d a p t e d   f r o m   f r o m   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 1 5 3 8 6 7 9 4 / a p p l e s c r i p t - f o r - s e n d i n g - e m a i l s - f r o m - a - l i s t - i n - e x c e l      l     ��  ��    F @ ###############################################################     �   �   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #      l     ����  r         m        �  � 0 0 2 8 8 1 3 3 9 , J u n i o r , , B r o w n , M a l i a , b r o w n , m a l i a , m a l i a . b r o w n 9 1 3 , m a l i a . b r o w n 9 1 3 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - b r o w n 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 2 9 3 6 7 8 4 , J u n i o r , , W a r d , E m y l e a , w a r d , e m y l e a , e m y l e a . w a r d 4 6 8 , e m y l e a . w a r d 4 6 8 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - w a r d 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 2 9 6 9 8 9 5 , S o p h o m o r e , , C a r r a n z a , O s c a r , c a r r a n z a , o s c a r , o s c a r . c a r r a n z a 5 9 9 , o s c a r . c a r r a n z a 5 9 9 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - c a r r a n z a 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 2 7 9 0 7 4 , J u n i o r , , B e r m u d e z   M u n o z , A s u c e n a , b e r m u d e z   m u n o z , a s u c e n a , a s u c e n a . b e r m u d e z m u n o z 4 9 7 , a s u c e n a . b e r m u d e z m u n o z 4 9 7 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - b e r m u d e z 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 3 5 0 5 0 9 , J u n i o r , , S a m a a n , J a m e s , s a m a a n , j a m e s , j a m e s . s a m a a n 9 0 0 , j a m e s . s a m a a n 9 0 0 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - s a m a a n 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 3 5 6 6 1 9 , S o p h o m o r e , , A c o s t a , C a r e y l a , a c o s t a , c a r e y l a , c a r e y l a . a c o s t a 9 6 1 , c a r e y l a . a c o s t a 9 6 1 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - a c o s t a 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 4 3 0 5 5 0 , S o p h o m o r e , , P y t h o n , A l e x , p y t h o n , a l e x , a l e x . p y t h o n 0 0 5 , a l e x . p y t h o n 0 0 5 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - p y t h o n 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 4 4 9 4 6 5 , S o p h o m o r e , , B o b e r g , N i l s , b o b e r g , n i l s , n i l s . b o b e r g 5 9 6 , n i l s . b o b e r g 5 9 6 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - b o b e r g 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 4 5 6 9 6 6 , S e n i o r , , V e g a , A s h l e y , v e g a , a s h l e y , a s h l e y . v e g a 6 6 6 , a s h l e y . v e g a 6 6 6 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - v e g a 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 4 6 9 7 7 1 , S o p h o m o r e , , B o o t h , O l i v e r , b o o t h , o l i v e r , o l i v e r . b o o t h 1 9 7 , o l i v e r . b o o t h 1 9 7 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - b o o t h 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 5 6 5 1 6 5 , S e n i o r , , V a n   G e l d e r , A m a n d a , v a n   g e l d e r , a m a n d a , a m a n d a . v a n g e l d e r 5 5 6 , a m a n d a . v a n g e l d e r 5 5 6 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - v a n g e l d e r 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 5 7 4 7 9 8 , S e n i o r , , Y o u n g , R a i , y o u n g , r a i , n a t a l i a . y o u n g 8 4 9 , n a t a l i a . y o u n g 8 4 9 @ c s u c i . e d u , g r a d e - r e p o r t - y o u n g 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 6 0 1 0 7 1 , F r e s h m a n , , M e n e n d e z , J u l i a , m e n e n d e z , j u l i a , j u l i a . m e n e n d e z 1 1 7 , j u l i a . m e n e n d e z 1 1 7 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - m e n e n d e z 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 6 0 6 8 1 7 , F r e s h m a n , , T h o m a s , J a y d e n , t h o m a s , j a y d e n , j a y d e n . t h o m a s 7 6 1 , j a y d e n . t h o m a s 7 6 1 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - t h o m a s 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 6 0 8 5 0 7 , S o p h o m o r e , , W i l l i a m s , A k i l a , w i l l i a m s , a k i l a , a k i l a . w i l l i a m s 7 8 0 , a k i l a . w i l l i a m s 7 8 0 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - w i l l i a m s 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 6 4 7 6 7 6 , F r e s h m a n , , B i b i a n , J u d y a n n , b i b i a n , j u d y a n n , j u d y a n n . b i b i a n 6 7 7 , j u d y a n n . b i b i a n 6 7 7 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - b i b i a n 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 6 8 9 0 1 6 , F r e s h m a n , , G r a m a j o   E n a m o r a d o , D a r l y n , g r a m a j o   e n a m o r a d o , d a r l y n , d a r l y n . g r a m a j o e n a m o r a d o 6 9 1 , d a r l y n . g r a m a j o e n a m o r a d o 6 9 1 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - g r a m a j o 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 7 2 2 9 2 0 , F r e s h m a n , , M o r a l e s , B e t z y , m o r a l e s , b e t z y , n a a r a . m o r a l e s 0 2 2 , n a a r a . m o r a l e s 0 2 2 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - m o r a l e s 2 0 2 3 - 0 5 - 2 0 . p d f 
 0 0 3 7 7 8 8 8 5 , S e n i o r , , L o l o g o , M a i l i a , l o l o g o , m a i l i a , m a i l i a . l o l o g o 5 8 8 , m a i l i a . l o l o g o 5 8 8 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - l o l o g o 2 0 2 3 - 0 5 - 2 0 . p d f  o      ���� 0 	addresses  ��  ��        l     ��  ��    � � set addresses to "003356619,Sophomore,,Acosta,Careyla,acosta,careyla,careyla.acosta961,careyla.acosta961@myci.csuci.edu,grade-report-acosta2023-05-13.pdf     �  4   s e t   a d d r e s s e s   t o   " 0 0 3 3 5 6 6 1 9 , S o p h o m o r e , , A c o s t a , C a r e y l a , a c o s t a , c a r e y l a , c a r e y l a . a c o s t a 9 6 1 , c a r e y l a . a c o s t a 9 6 1 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - a c o s t a 2 0 2 3 - 0 5 - 1 3 . p d f     !   l     �� " #��   " � | 003449465,Sophomore,,Boberg,Nils,boberg,nils,nils.boberg596,nils.boberg596@myci.csuci.edu,grade-report-boberg2023-05-13.pdf    # � $ $ �   0 0 3 4 4 9 4 6 5 , S o p h o m o r e , , B o b e r g , N i l s , b o b e r g , n i l s , n i l s . b o b e r g 5 9 6 , n i l s . b o b e r g 5 9 6 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - b o b e r g 2 0 2 3 - 0 5 - 1 3 . p d f !  % & % l     �� ' (��   ' } w 003456966,Senior,,Vega,Ashley,vega,ashley,ashley.vega666,ashley.vega666@myci.csuci.edu,grade-report-vega2023-05-13.pdf    ( � ) ) �   0 0 3 4 5 6 9 6 6 , S e n i o r , , V e g a , A s h l e y , v e g a , a s h l e y , a s h l e y . v e g a 6 6 6 , a s h l e y . v e g a 6 6 6 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - v e g a 2 0 2 3 - 0 5 - 1 3 . p d f &  * + * l     �� , -��   , �  003469771,Sophomore,,Booth,Oliver,booth,oliver,oliver.booth197,oliver.booth197@myci.csuci.edu,grade-report-booth2023-05-13.pdf    - � . . �   0 0 3 4 6 9 7 7 1 , S o p h o m o r e , , B o o t h , O l i v e r , b o o t h , o l i v e r , o l i v e r . b o o t h 1 9 7 , o l i v e r . b o o t h 1 9 7 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - b o o t h 2 0 2 3 - 0 5 - 1 3 . p d f +  / 0 / l     �� 1 2��   1 � � 003565165,Senior,,Van Gelder,Amanda,van gelder,amanda,amanda.vangelder556,amanda.vangelder556@myci.csuci.edu,grade-report-vangelder2023-05-13.pdf    2 � 3 3$   0 0 3 5 6 5 1 6 5 , S e n i o r , , V a n   G e l d e r , A m a n d a , v a n   g e l d e r , a m a n d a , a m a n d a . v a n g e l d e r 5 5 6 , a m a n d a . v a n g e l d e r 5 5 6 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - v a n g e l d e r 2 0 2 3 - 0 5 - 1 3 . p d f 0  4 5 4 l     �� 6 7��   6 � � 003606817,Freshman,,Thomas,Jayden,thomas,jayden,jayden.thomas761,jayden.thomas761@myci.csuci.edu,grade-report-thomas2023-05-13.pdf    7 � 8 8   0 0 3 6 0 6 8 1 7 , F r e s h m a n , , T h o m a s , J a y d e n , t h o m a s , j a y d e n , j a y d e n . t h o m a s 7 6 1 , j a y d e n . t h o m a s 7 6 1 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - t h o m a s 2 0 2 3 - 0 5 - 1 3 . p d f 5  9 : 9 l     �� ; <��   ; � � 003778885,Senior,,Lologo,Mailia,lologo,mailia,mailia.lologo588,mailia.lologo588@myci.csuci.edu,grade-report-lologo2023-05-13.pdf"    < � = =   0 0 3 7 7 8 8 8 5 , S e n i o r , , L o l o g o , M a i l i a , l o l o g o , m a i l i a , m a i l i a . l o l o g o 5 8 8 , m a i l i a . l o l o g o 5 8 8 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - l o l o g o 2 0 2 3 - 0 5 - 1 3 . p d f " :  > ? > l   	 @���� @ r    	 A B A m     C C � D D  , B 1    ��
�� 
txdl��  ��   ?  E�� E l  
0 F���� F X   
0 G�� H G k   + I I  J K J O    L L M L k     K N N  O P O r     & Q R Q 4     $�� S
�� 
cfol S m   " # T T � U U � M a c i n t o s h   H D : U s e r s : j a s o n . m i l l e r : D r o p b o x   ( C S U C I ) : T E A C H   -   P r e s e n t : _ S p r i n g   2 0 2 3 : M A T H   1 5 0 - 0 2 : g r a d e s : r e p o r t s - 0 5 2 0 : R o      ���� 0 
folderpath 
folderPath P  V W V r   ' A X Y X c   ' = Z [ Z l  ' 9 \���� \ 6  ' 9 ] ^ ] n   ' + _ ` _ 4  ( +�� a
�� 
file a m   ) *����  ` o   ' (���� 0 
folderpath 
folderPath ^ E   , 8 b c b 1   - /��
�� 
pnam c n   0 7 d e d 4   2 7�� f
�� 
citm f m   3 6���� 
 e o   0 2���� 0 l  ��  ��   [ m   9 <��
�� 
alis Y o      ���� 0 thefile theFile W  g�� g r   B K h i h n   B G j k j 1   E G��
�� 
pnam k o   B E���� 0 thefile theFile i o      ���� 0 filename fileName��   M m     l l�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   K  m n m r   M T o p o o   M P���� 0 thefile theFile p o      ���� 0 theattachment theAttachment n  q r q r   U \ s t s m   U X u u � v v , j a s o n . m i l l e r @ c s u c i . e d u t o      ���� 0 	thesender 	theSender r  w x w r   ] d y z y m   ] ` { { � | | P g r a d e   r e p o r t   f o r   C a l c u l u s   I ,   1 1   M a y   2 0 2 3 z o      ���� 0 
thesubject 
theSubject x  } ~ } r   e �  �  b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e � � � � b   e  � � � b   e { � � � b   e w � � � b   e s � � � b   e o � � � m   e h � � � � � 
 D e a r   � n   h n � � � 4   i n�� �
�� 
citm � m   j m����  � o   h i���� 0 l   � m   o r � � � � �  , � 1   s v��
�� 
lnfd � 1   w z��
�� 
lnfd � m   { ~ � � � � �� I   g r a d e d   s o m e   m o r e   L T Q s ,   t h i s   m o r n i n g .     T h e r e   w a s   a t   l e a s t   o n e   f r o m   y o u ,   s o   I   d e c i d e d   t o   s e n d   y o u   a n   u p d a t e d   g r a d e   r e p o r t .     P l e a s e   r e v i e w   t o   m a k e   s u r e   t h e   i n f o r m a t i o n   c o n t a i n e d   i n   t h e   r e p o r t   i s   a c c u r a t e . � 1    ���
�� 
lnfd � 1   � ���
�� 
lnfd � m   � � � � � � � �   I f   y o u   t h i n k   t h e r e   i s   a   m i s t a k e   a n d   i f   y o u   h a v e   a   q u i z   t h a t   i s   n o t   y e t   g r a d e d ,   p l e a s e   e m a i l   m e . � 1   � ���
�� 
lnfd � 1   � ���
�� 
lnfd � m   � � � � � � � � L e t   m e   k n o w   i f   y o u   h a v e   a n y   q u e s t i o n s   o r   c o n c e r n s   a b o u t   t h i s   r e p o r t . � 1   � ���
�� 
lnfd � 1   � ���
�� 
lnfd � m   � � � � � � �� T h e   d e a d l i n e   f o r   t a k i n g   a n d   t u r n i n g   i n   a   L e a r n i n g   t a r g e t   Q u i z   i s   1 1 : 5 9 p m   o n   F r i d a y ,   M a y   1 9 t h .     T a k i n g   t h e   f i n a l   e x a m   i s   m a n d a t o r y ,   s o   b e   s u r e   y o u   s i g n   u p   t o   t a k e   i t   n e x t   w e e k   i f   y o u   h a v e n ' t   a l r e a d y   d o n e   s o   i t . � 1   � ���
�� 
lnfd � 1   � ���
�� 
lnfd � m   � � � � � � �  S i n c e r e l y , � 1   � ���
�� 
lnfd � m   � � � � � � �  D r .   M i l l e r � 1   � ���
�� 
lnfd � 1   � ���
�� 
lnfd � o   � ����� 0 filename fileName � o      ���� 0 thebody theBody ~  � � � r   �* � � � b   �& � � � b   �" � � � b   � � � � b   � � � � b   � � � � b   � � � � b   � � � � b   �
 � � � b   � � � � b   � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 
 D e a r   � n   � � � � � 4   � ��� �
�� 
citm � m   � �����  � o   � ����� 0 l   � m   � � � � � � �  , � 1   � ���
�� 
lnfd � 1   � ���
�� 
lnfd � m   � � � � � � �� I   j u s t   g r a d e d   t h e   r e s t   o f   t h e   L T Q s   t h a t   h a d   b e e n   s u b m i t t e d   t o   C a n v a s ,   a n d   I   t h o u g h t   I ' d   s e n d   y o u   a n   u p d a t e d   g r a d e   r e p o r t   b e c a u s e   t h e r e   w a s   a t   l e a s t   o n e   f r o m   y o u .     P l e a s e   r e v i e w   t o   m a k e   s u r e   t h e   i n f o r m a t i o n   c o n t a i n e d   i n   t h e   r e p o r t   i s   a c c u r a t e . � 1   � ���
�� 
lnfd � 1   � ���
�� 
lnfd � m   � � � � � � � �   I f   y o u   t h i n k   t h e r e   i s   a   m i s t a k e   a n d   i f   y o u   h a v e   a   q u i z   t h a t   i s   n o t   y e t   g r a d e d ,   p l e a s e   e m a i l   m e . � 1   � ���
�� 
lnfd � 1   � ���
�� 
lnfd � m   � � � � � � � � L e t   m e   k n o w   i f   y o u   h a v e   a n y   q u e s t i o n s   o r   c o n c e r n s   a b o u t   t h i s   r e p o r t . � 1   � ���
�� 
lnfd � 1   ���
�� 
lnfd � m   � � � � �� T h e   d e a d l i n e   f o r   t a k i n g   a n d   t u r n i n g   i n   a   L e a r n i n g   t a r g e t   Q u i z   i s   1 1 : 5 9 p m   o n   F r i d a y ,   M a y   1 9 t h .     T a k i n g   t h e   f i n a l   e x a m   i s   m a n d a t o r y ,   s o   b e   s u r e   y o u   s i g n   u p   t o   t a k e   i t   n e x t   w e e k   i f   y o u   h a v e n ' t   a l r e a d y   d o n e   s o   i t . � 1  	��
�� 
lnfd � 1  
��
�� 
lnfd � m   � � �    S i n c e r e l y , � 1  ��
�� 
lnfd � m   �  D r .   M i l l e r � 1  ��
�� 
lnfd � 1  !��
�� 
lnfd � o  "%���� 0 filename fileName � o      ���� 0 thebody theBody �  r  +� b  +� b  +�	
	 b  +� b  +} b  +y b  +u b  +q b  +m b  +i b  +e b  +a b  +] b  +Y  b  +U!"! b  +Q#$# b  +M%&% b  +I'(' b  +E)*) b  +A+,+ b  +=-.- b  +9/0/ b  +5121 m  +.33 �44 
 D e a r  2 n  .4565 4  /4��7
�� 
citm7 m  03���� 6 o  ./���� 0 l  0 m  5888 �99  ,. 1  9<��
�� 
lnfd, 1  =@��
�� 
lnfd* m  AD:: �;;� I   j u s t   g r a d e d   t h e   r e s t   o f   t h e   L T Q s   t h a t   h a d   b e e n   s u b m i t t e d   t o   C a n v a s ,   a n d   I   t h o u g h t   I ' d   s e n d   y o u   a n   u p d a t e d   g r a d e   r e p o r t .     P l e a s e   r e v i e w   t o   m a k e   s u r e   t h e   i n f o r m a t i o n   c o n t a i n e d   i n   t h e   r e p o r t   i s   a c c u r a t e .( 1  EH��
�� 
lnfd& 1  IL��
�� 
lnfd$ m  MP<< �== �   I f   y o u   t h i n k   t h e r e   i s   a   m i s t a k e   a n d   i f   y o u   h a v e   a   q u i z   t h a t   i s   n o t   y e t   g r a d e d ,   p l e a s e   e m a i l   m e ." 1  QT��
�� 
lnfd  1  UX��
�� 
lnfd m  Y\>> �?? � L e t   m e   k n o w   i f   y o u   h a v e   a n y   q u e s t i o n s   o r   c o n c e r n s   a b o u t   t h i s   r e p o r t . 1  ]`��
�� 
lnfd 1  ad��
�� 
lnfd m  eh@@ �AA� T h e   d e a d l i n e   f o r   t a k i n g   a n d   t u r n i n g   i n   a   L e a r n i n g   t a r g e t   Q u i z   i s   1 1 : 5 9 p m   o n   F r i d a y ,   M a y   1 9 t h .     T a k i n g   t h e   f i n a l   e x a m   i s   m a n d a t o r y ,   s o   b e   s u r e   y o u   s i g n   u p   t o   t a k e   i t   n e x t   w e e k   i f   y o u   h a v e n ' t   a l r e a d y   d o n e   s o   i t . 1  il��
�� 
lnfd 1  mp��
�� 
lnfd m  qtBB �CC  S i n c e r e l y , 1  ux��
�� 
lnfd m  y|DD �EE  D r .   M i l l e r 1  }���
�� 
lnfd
 1  ����
�� 
lnfd o  ������ 0 filename fileName o      ���� 0 thebody theBody FGF r  ��HIH b  ��JKJ b  ��LML b  ��NON b  ��PQP b  ��RSR b  ��TUT b  ��VWV b  ��XYX b  ��Z[Z b  ��\]\ b  ��^_^ b  ��`a` b  ��bcb b  ��ded b  ��fgf b  ��hih b  ��jkj b  ��lml b  ��non b  ��pqp b  ��rsr b  ��tut m  ��vv �ww 
 D e a r  u n  ��xyx 4  ����z
�� 
citmz m  ������ y o  ������ 0 l  s m  ��{{ �||  ,q 1  ����
�� 
lnfdo 1  ����
�� 
lnfdm m  ��}} �~~ I   j u s t   f i n i s h e d   g r a d i n g   f o r   t h e   n i g h t .     I ' v e   g r a d e d   a l l   t h e   L T Q s   t h a t   w e r e   s u b m i t t e d   b e f o r e   9 : 3 0 p m .     I f   y o u   s u b m i t   a n   L T Q   b e t w e e n   n o w   a n d   m i d n i g h t ,   I   w i l l   g r a d e   i t   e a r l y   n e x t   w e e k .     S i n c e   I ' m   c a u g h t   u p   o n   g r a d i n g   L T Q s ,   I   t h o u g h t   I   w o u l d   s e n d   o u t   a   g r a d e   r e p o r t   t o   e v e r y o n e .     Y o u r s   i s   a t t a c h e d   t o   t h i s   e m a i l .     P l e a s e   r e v i e w   t o   m a k e   s u r e   t h e   i n f o r m a t i o n   c o n t a i n e d   i n   t h e   r e p o r t   i s   a c c u r a t e .k 1  ����
�� 
lnfdi 1  ����
�� 
lnfdg m  �� ��� �   I f   y o u   t h i n k   t h e r e   i s   a   m i s t a k e   a n d   i f   y o u   h a v e   a   q u i z   t h a t   i s   n o t   y e t   g r a d e d ,   p l e a s e   e m a i l   m e .e 1  ����
�� 
lnfdc 1  ����
�� 
lnfda m  ���� ��� � L e t   m e   k n o w   i f   y o u   h a v e   a n y   q u e s t i o n s   o r   c o n c e r n s   a b o u t   t h i s   r e p o r t ._ 1  ����
�� 
lnfd] 1  ����
�� 
lnfd[ m  ���� ��� � T h e   d e a d l i n e   f o r   t a k i n g   a n d   t u r n i n g   i n   a   L e a r n i n g   t a r g e t   Q u i z   i s   1 1 : 5 9 p m   t o n i g h t .Y 1  ����
�� 
lnfdW 1  ����
�� 
lnfdU m  ���� ���  S i n c e r e l y ,S 1  ����
�� 
lnfdQ m  ���� ���  D r .   M i l l e rO 1  ����
�� 
lnfdM 1  ����
�� 
lnfdK o  ������ 0 filename fileNameI o      ���� 0 thebody theBodyG ��� r  �S��� b  �O��� b  �K��� b  �G��� b  �C��� b  �?��� b  �;��� b  �7��� b  �3��� b  �/��� b  �+��� b  �'��� b  �#��� b  ���� b  ���� b  ���� b  ���� b  ���� b  ���� b  ���� b  ���� b  ����� b  ����� m  ���� ��� 
 D e a r  � n  ����� 4  �����
�� 
citm� m  ������ � o  ������ 0 l  � m  ���� ���  ,� 1  ���
�� 
lnfd� 1  ��
�� 
lnfd� m  
�� ���� I   j u s t   f i n i s h e d   g r a d i n g   a l l   L T Q s   t h a t   h a v e   b e e n   s u b m i t t e d   t h i s   s e m e s t e r .     A t t a c h e d   t o   t h i s   e m a i l   i s   y o u r   c o m p l e t e d   g r a d e   r e p o r t .     P l e a s e   r e v i e w   t o   m a k e   s u r e   t h e   i n f o r m a t i o n   c o n t a i n e d   i n   t h e   r e p o r t   i s   a c c u r a t e .� 1  ��
�� 
lnfd� 1  ��
�� 
lnfd� m  �� ���8 I f   y o u   t h i n k   t h e r e   i s   a   m i s t a k e   a n d   i f   y o u   h a v e   a   q u i z   t h a t   i s   n o t   y e t   g r a d e d ,   p l e a s e   e m a i l   m e .     A f t e r   I   h a v e   y o u r   s c o r e   f r o m   t h e   f i n a l   e x a m ,   I   w i l l   h a n d - c h e c k   t h e   L T Q   c o u n t s   o f   ' E '   a n d   ' S '   g r a d e s   b e f o r e   I   a s s i g n   y o u r   c o u r s e   g r a d e s .     I   e x p e c t   t o   s u b m i t   y o u r   c o u r s e   g r a d e   o n   W e d n e s d a y .� 1  ��
�� 
lnfd� 1  ��
�� 
lnfd� m  "�� ��� � L e t   m e   k n o w   i f   y o u   h a v e   a n y   q u e s t i o n s   o r   c o n c e r n s   a b o u t   t h i s   r e p o r t .� 1  #&��
�� 
lnfd� 1  '*��
�� 
lnfd� m  +.�� ��� � I t   w a s   a   p l e a s u r e   h a v i n g   y o u   i n   c l a s s   t h i s   s e m e s t e r .     I   h o p e   y o u   h a v e   a   r e l a x i n g   a n d   r e w a r d i n g   s u m m e r .     S e e   y o u   i n   t h e   F a l l !� 1  /2��
�� 
lnfd� 1  36��
�� 
lnfd� m  7:�� ���  S i n c e r e l y ,� 1  ;>��
�� 
lnfd� m  ?B�� ���  D r .   M i l l e r� 1  CF�
� 
lnfd� 1  GJ�~
�~ 
lnfd� o  KN�}�} 0 filename fileName� o      �|�| 0 thebody theBody� ��{� O  T+��� k  Z*�� ��� r  Z���� I Z��z�y�
�z .corecrel****      � null�y  � �x��
�x 
kocl� m  \_�w
�w 
bcke� �v��u
�v 
prdt� K  b~�� �t��
�t 
subj� o  eh�s�s 0 
thesubject 
theSubject� �r��
�r 
ctnt� b  kv��� b  kr��� o  kn�q�q 0 thebody theBody� o  nq�p
�p 
ret � o  ru�o
�o 
ret � �n��m
�n 
pvis� m  yz�l
�l boovtrue�m  �u  � o      �k�k 0 thenewmessage theNewMessage� ��� O  �(��� k  �'�� ��� r  ����� m  ���j
�j boovtrue� 1  ���i
�i 
pvis� ��� r  ����� o  ���h�h 0 	thesender 	theSender� 1  ���g
�g 
sndr� ��� I ���f�e�
�f .corecrel****      � null�e  � �d��
�d 
kocl� m  ���c
�c 
trcp� �b��
�b 
insh� n  �����  ;  ��� 2 ���a
�a 
trcp� �`��_
�` 
prdt� K  ���� �^��
�^ 
pnam� n  ����� 4  ���]�
�] 
citm� m  ���\�\ � o  ���[�[ 0 l  � �Z��Y
�Z 
radd� n  ��   4  ���X
�X 
citm m  ���W�W 	 o  ���V�V 0 l  �Y  �_  �  Q  � k  �� 	
	 I ���U�T
�U .corecrel****      � null�T   �S
�S 
kocl m  ���R
�R 
atts �Q
�Q 
prdt K  �� �P�O
�P 
atfn o  ���N�N 0 theattachment theAttachment�O   �M�L
�M 
insh n  �� 9  ���K
�K 
insl l ���J�I n  �� 4 ���H
�H 
cwor m  ���G�G�� l ���F�E 4 ���D
�D 
cpar m  ���C�C���F  �E  �J  �I  �L  
 �B r  �� m  ���A�A   o      �@�@ 0 message_attachment  �B   R      �?�>
�? .ascrerr ****      � **** o      �=�= 0 errmess  �>   l  ! k  "" #$# l 	%&'% I 	�<(�;
�< .ascrcmnt****      � ****( o  �:�: 0 errmess  �;  &   log the error   ' �))    l o g   t h e   e r r o r$ *�9* r  
+,+ m  
�8�8 , o      �7�7 0 message_attachment  �9      oops   ! �-- 
   o o p s ./. I �60�5
�6 .ascrcmnt****      � ****0 b  121 m  33 �44 * m e s s a g e _ a t t a c h m e n t   =  2 o  �4�4 0 message_attachment  �5  / 565 l �378�3  7  			send   8 �99  	 	 	 s e n d6 :;: I !�2<�1
�2 .sysodelanull��� ��� nmbr< m  �0�0 �1  ; =�/= I "'�.�-�,
�. .emsgsendnull���     bcke�-  �,  �/  � o  ���+�+ 0 thenewmessage theNewMessage� >?> l ))�*@A�*  @ ( "		tell (make new outgoing message)   A �BB D 	 	 t e l l   ( m a k e   n e w   o u t g o i n g   m e s s a g e )? CDC l ))�)EF�)  E , &			--set theFile to fiest file in ....   F �GG L 	 	 	 - - s e t   t h e F i l e   t o   f i e s t   f i l e   i n   . . . .D HIH l ))�(JK�(  J % 			set theAttachment to theFile   K �LL > 	 	 	 s e t   t h e A t t a c h m e n t   t o   t h e F i l eI MNM l ))�'OP�'  O x r			make new to recipient at end of to recipients with properties {name:text item 2 of l, address:text item 3 of l}   P �QQ � 	 	 	 m a k e   n e w   t o   r e c i p i e n t   a t   e n d   o f   t o   r e c i p i e n t s   w i t h   p r o p e r t i e s   { n a m e : t e x t   i t e m   2   o f   l ,   a d d r e s s : t e x t   i t e m   3   o f   l }N RSR l ))�&TU�&  T v p			-- make new attachment with properties {file name:theAttachment} at after the last word of the last paragraph   U �VV � 	 	 	 - -   m a k e   n e w   a t t a c h m e n t   w i t h   p r o p e r t i e s   { f i l e   n a m e : t h e A t t a c h m e n t }   a t   a f t e r   t h e   l a s t   w o r d   o f   t h e   l a s t   p a r a g r a p hS WXW l ))�%YZ�%  Y  			send   Z �[[  	 	 	 s e n dX \]\ l ))�$^_�$  ^  
			delay 5   _ �``  	 	 	 d e l a y   5] a�#a l ))�"bc�"  b  
		end tell   c �dd  	 	 e n d   t e l l�#  � m  TWee�                                                                                  emal  alis    (  Macintosh HD                   BD ����Mail.app                                                       ����            ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��  �{  �� 0 l   H n    fgf 2   �!
�! 
cparg o    � �  0 	addresses  ��  ��  ��       �hi�  h �
� .aevtoappnull  �   � ****i �j��kl�
� .aevtoappnull  �   � ****j k    0mm  nn  >oo  E��  �  �  k ��� 0 l  � 0 errmess  l _ � C����� l� T��p����
�	�� u� {� �� �� � � � � � �� � � � � � � �38:<>@BDv{}������������e�� ������������������������������������������3����� 0 	addresses  
� 
txdl
� 
cpar
� 
kocl
� 
cobj
� .corecnte****       ****
� 
cfol� 0 
folderpath 
folderPath
� 
filep  
� 
pnam
� 
citm� 

�
 
alis�	 0 thefile theFile� 0 filename fileName� 0 theattachment theAttachment� 0 	thesender 	theSender� 0 
thesubject 
theSubject� 
� 
lnfd� 0 thebody theBody
� 
bcke
�  
prdt
�� 
subj
�� 
ctnt
�� 
ret 
�� 
pvis�� �� 
�� .corecrel****      � null�� 0 thenewmessage theNewMessage
�� 
sndr
�� 
trcp
�� 
insh
�� 
radd�� 	
�� 
atts
�� 
atfn
�� 
cwor
�� 
insl�� 0 message_attachment  �� 0 errmess  ��  
�� .ascrcmnt****      � ****
�� .sysodelanull��� ��� nmbr
�� .emsgsendnull���     bcke�1�E�O�*�,FO%��-[��l kh  � -*��/E�O��k/�[�,\Z��a /@1a &E` O_ �,E` UO_ E` Oa E` Oa E` Oa ��a /%a %_ %_ %a %_ %_ %a %_ %_ %a %_ %_ %a  %_ %_ %a !%_ %a "%_ %_ %_ %E` #Oa $��a /%a %%_ %_ %a &%_ %_ %a '%_ %_ %a (%_ %_ %a )%_ %_ %a *%_ %a +%_ %_ %_ %E` #Oa ,��a /%a -%_ %_ %a .%_ %_ %a /%_ %_ %a 0%_ %_ %a 1%_ %_ %a 2%_ %a 3%_ %_ %_ %E` #Oa 4��a /%a 5%_ %_ %a 6%_ %_ %a 7%_ %_ %a 8%_ %_ %a 9%_ %_ %a :%_ %a ;%_ %_ %_ %E` #Oa <��a /%a =%_ %_ %a >%_ %_ %a ?%_ %_ %a @%_ %_ %a A%_ %_ %a B%_ %a C%_ %_ %_ %E` #Oa D �*�a Ea Fa G_ a H_ #_ I%_ I%a Jea Ka L ME` NO_ N �e*a J,FO_ *a O,FO*�a Pa Q*a P-6a F��a /a R��a S/a La K MO 1*�a Ta Fa U_ la Q*�i/a Vi/a W4a K MOjE` XW X Y Z�j [OkE` XOa \_ X%j [Olj ]O*j ^UOPU[OY�� ascr  ��ޭ