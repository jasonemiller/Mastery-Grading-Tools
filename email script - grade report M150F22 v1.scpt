FasdUAS 1.101.10   ��   ��    k             l     ��  ��    Q K script to send a personalized uniform email to a xollection on individuals     � 	 	 �   s c r i p t   t o   s e n d   a   p e r s o n a l i z e d   u n i f o r m   e m a i l   t o   a   x o l l e c t i o n   o n   i n d i v i d u a l s   
  
 l     ��  ��    y s adapted from from https://stackoverflow.com/questions/15386794/applescript-for-sending-emails-from-a-list-in-excel     �   �   a d a p t e d   f r o m   f r o m   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 1 5 3 8 6 7 9 4 / a p p l e s c r i p t - f o r - s e n d i n g - e m a i l s - f r o m - a - l i s t - i n - e x c e l      l     ��  ��    F @ ###############################################################     �   �   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #      l     ����  r         m        �  > 2 9 4 7 9 9 0 , J u n i o r , 4 4 7 1 1 , , A l m a r a z , L o r e n a   , a l m a r a z , l o r e n a   , l o r e n a . a l m a r a z 0 7 9 , l o r e n a . a l m a r a z 0 7 9 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - a l m a r a z 2 0 2 2 - 1 2 - 0 5 . p d f 
 2 0 0 5 7 3 2 , S e n i o r , 4 4 6 7 8 , , A r i a s , A r i a n a , a r i a s , a r i a n a , a r i a n a . a r i a s 2 5 3 , a r i a n a . a r i a s 2 5 3 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - a r i a s 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 6 4 7 6 7 6 , F r e s h m a n , 4 4 7 4 2 , , B i b i a n , J u d y a n n , b i b i a n , j u d y a n n , j u d y a n n . b i b i a n 6 7 7 , j u d y a n n . b i b i a n 6 7 7 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - b i b i a n 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 3 5 3 1 2 2 , S e n i o r , 4 4 6 7 6 , , B y n d e r , B e n j a m i n , b y n d e r , b e n j a m i n , b e n j a m i n . b y n d e r 2 3 2 , b e n j a m i n . b y n d e r 2 3 2 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - b y n d e r 2 0 2 2 - 1 2 - 0 5 . p d f 
 2 9 9 6 1 1 6 , S o p h o m o r e , 4 4 6 9 0 , , C a s t e l l a n o s , A s h l e y   , c a s t e l l a n o s , a s h l e y   , a s h l e y . c a s t e l l a n o s 6 6 1 , a s h l e y . c a s t e l l a n o s 6 6 1 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - c a s t e l l a n o s 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 7 1 0 5 1 8 , S e n i o r , 4 4 7 8 0 , , C e j a , G e n e s i s , c e j a , g e n e s i s , g e n e s i s . c e j a 8 0 1 , g e n e s i s . c e j a 8 0 1 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - c e j a 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 3 8 9 3 4 0 , F r e s h m a n , 4 4 6 8 4 , , C o l i n d r e s , K e l l y   , c o l i n d r e s , k e l l y   , k e l l y . c o l i n d r e s 0 9 4 , k e l l y . c o l i n d r e s 0 9 4 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - c o l i n d r e s 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 3 2 1 5 3 2 , S e n i o r , 4 4 6 7 8 , , E s c o b a r , E s t r e l l a , e s c o b a r , e s t r e l l a , e s t r e l l a . e s c o b a r 2 1 3 , e s t r e l l a . e s c o b a r 2 1 3 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - e s c o b a r 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 7 0 7 5 6 7 , J u n i o r , 4 4 7 6 9 , , L a n g n e s s , H a l e y   , l a n g n e s s , h a l e y   , h a l e y . l a n g n e s s 7 7 6 , h a l e y . l a n g n e s s 7 7 6 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - l a n g n e s s 2 0 2 2 - 1 2 - 0 5 . p d f 
 1 9 6 9 6 5 7 , S e n i o r , 4 4 7 5 1 , , M a n s o u r , M a r y   , m a n s o u r , m a r y   , m a r y . m a n s o u r 7 9 5 , m a r y . m a n s o u r 7 9 5 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - m a n s o u r 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 7 2 2 3 6 1 , F r e s h m a n , 4 4 7 3 6 , , M a r t i n e z , J u a n   , m a r t i n e z , j u a n   , j u a n . m a r t i n e z 1 2 6 , j u a n . m a r t i n e z 1 2 6 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - m a r t i n e z j 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 7 0 3 4 4 6 , S e n i o r , 4 4 7 6 2 , , M e y e r , E v a n   , m e y e r , e v a n   , e v a n . m e y e r 6 3 4 , e v a n . m e y e r 6 3 4 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - m e y e r 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 3 5 7 3 4 7 , S e n i o r , 4 4 6 7 9 , , M i c h a e l , B e n , m i c h a e l , b e n , b e n j a m i n . m i c h a e l 7 7 4 , b e n j a m i n . m i c h a e l 7 7 4 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - m i c h a e l 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 3 6 2 7 0 3 , F r e s h m a n , 4 4 6 8 4 , , M i l l e r , A r i a n n a   , m i l l e r , a r i a n n a   , a r i a n n a . m i l l e r 3 2 0 , a r i a n n a . m i l l e r 3 2 0 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - m i l l e r 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 5 6 7 0 6 3 , J u n i o r , 4 4 7 6 0 , , M o r a l e s , R a e l e n e   , m o r a l e s , r a e l e n e   , r a e l e n e . m o r a l e s 3 7 6 , r a e l e n e . m o r a l e s 3 7 6 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - m o r a l e s 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 3 9 2 9 4 1 , S o p h o m o r e , 4 4 6 8 4 , , P e r c h e s , A l e x a n d r i a   , p e r c h e s , a l e x a n d r i a   , a l e x a n d r i a . p e r c h e s 1 2 4 , a l e x a n d r i a . p e r c h e s 1 2 4 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - p e r c h e s 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 6 7 4 5 7 3 , J u n i o r , 4 4 7 6 2 , , R a m i r e z , J u a n   , r a m i r e z j , j u a n   , j u a n . r a m i r e z 3 4 7 , j u a n . r a m i r e z 3 4 7 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - r a m i r e z j 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 2 1 8 7 8 0 , F r e s h m a n , 4 4 8 0 2 , , R a m i r e z , K i m b e r l y , r a m i r e z k , k i m b e r l y , k i m b e r l y . r a m i r e z 0 8 8 , k i m b e r l y . r a m i r e z 0 8 8 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - r a m i r e z k 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 4 1 4 8 5 9 , J u n i o r , 4 4 7 6 7 , , S h o f n e r , C o d y   , s h o f n e r , c o d y   , c o d y . s h o f n e r 9 4 5 , c o d y . s h o f n e r 9 4 5 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - s h o f n e r 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 5 6 7 4 7 9 , F r e s h m a n , 4 4 7 9 7 , , S i m i e n s , C o l i n   , s i m i e n s , c o l i n   , c o l i n . s i m i e n s 9 7 7 , c o l i n . s i m i e n s 9 7 7 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - s i m i e n s 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 3 7 7 8 2 2 , S o p h o m o r e , 4 4 6 8 5 , , T u c k e r , K o a , t u c k e r , k o a , k o a . t u c k e r 2 7 2 , k o a . t u c k e r 2 7 2 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - t u c k e r 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 4 5 6 9 6 6 , S e n i o r , 4 4 6 7 9 , , V e g a , A s h l e y , v e g a , a s h l e y , a s h l e y . v e g a 6 6 6 , a s h l e y . v e g a 6 6 6 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - v e g a 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 4 7 6 0 1 1 , S o p h o m o r e , 4 4 7 8 0 , , V i l l a r t a , A a r o n , v i l l a r t a , a a r o n , a a r o n . v i l l a r t a 1 6 1 , a a r o n . v i l l a r t a 1 6 1 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - v i l l a r t a 2 0 2 2 - 1 2 - 0 5 . p d f 
 2 9 3 6 7 8 4 , S o p h o m o r e , 4 4 7 8 1 , , W a r d , E m y l e a   , w a r d , e m y l e a   , e m y l e a . w a r d 4 6 8 , e m y l e a . w a r d 4 6 8 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - w a r d 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 5 6 2 0 1 9 , J u n i o r , 4 4 7 1 1 , , W e a t h e r f o r d , M a r c e l a   , w e a t h e r f o r d , m a r c e l a   , m a r c e l a . w e a t h e r f o r d 9 2 1 , m a r c e l a . w e a t h e r f o r d 9 2 1 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - w e a t h e r f o r d 2 0 2 2 - 1 2 - 0 5 . p d f 
 3 6 9 6 0 6 2 , F r e s h m a n , 4 4 7 7 6 , , Z h o n g , J i a n k a i , z h o n g , j i a n k a i , j i a n k a i . z h o n g 2 6 6 , j i a n k a i . z h o n g 2 6 6 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - z h o n g 2 0 2 2 - 1 2 - 0 5 . p d f  o      ���� 0 	addresses  ��  ��        l    ����  r        m         � ! ! 3 4 5 6 9 6 6 , S e n i o r , 4 4 6 7 9 , , V e g a , A s h l e y , v e g a , a s h l e y , a s h l e y . v e g a 6 6 6 , a s h l e y . v e g a 6 6 6 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - v e g a 2 0 2 2 - 1 2 - 0 8 . p d f 
 3 3 5 3 1 2 2 , S e n i o r , 4 4 6 7 6 , , B y n d e r , B e n j a m i n , b y n d e r , b e n j a m i n , b e n j a m i n . b y n d e r 2 3 2 , b e n j a m i n . b y n d e r 2 3 2 @ m y c i . c s u c i . e d u , g r a d e - r e p o r t - b y n d e r 2 0 2 2 - 1 2 - 0 8 . p d f  o      ���� 0 	addresses  ��  ��     " # " l    $���� $ r     % & % m    	 ' ' � ( (  , & 1   	 ��
�� 
txdl��  ��   #  )�� ) l   *���� * X    +�� , + k     - -  . / . O     R 0 1 0 k   $ Q 2 2  3 4 3 r   $ * 5 6 5 4   $ (�� 7
�� 
cfol 7 m   & ' 8 8 � 9 9 � M a c i n t o s h   H D : U s e r s : j a s o n . m i l l e r : D r o p b o x   ( C S U C I ) : T E A C H   -   P r e s e n t : _ F a l l   2 0 2 2 : r e p o r t s   v 1 2 : 6 o      ���� 0 
folderpath 
folderPath 4  : ; : r   + G < = < c   + C > ? > l  + ? @���� @ 6  + ? A B A n   + / C D C 4  , /�� E
�� 
file E m   - .����  D o   + ,���� 0 
folderpath 
folderPath B E   0 > F G F 1   1 3��
�� 
pnam G n   4 = H I H 4   6 =�� J
�� 
citm J m   9 <����  I o   4 6���� 0 l  ��  ��   ? m   ? B��
�� 
alis = o      ���� 0 thefile theFile ;  K�� K r   H Q L M L n   H M N O N 1   K M��
�� 
pnam O o   H K���� 0 thefile theFile M o      ���� 0 filename fileName��   1 m     ! P P�                                                                                  MACS  alis    @  Macintosh HD               �	�iBD ����
Finder.app                                                     �����	�i        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   /  Q R Q r   S Z S T S o   S V���� 0 thefile theFile T o      ���� 0 theattachment theAttachment R  U V U r   [ b W X W m   [ ^ Y Y � Z Z , j a s o n . m i l l e r @ c s u c i . e d u X o      ���� 0 	thesender 	theSender V  [ \ [ r   c j ] ^ ] m   c f _ _ � ` ` h U P D A T E D   g r a d e   r e p o r t   f o r   C a l c u l u s   I ,   8   D e c e m b e r   2 0 2 2 ^ o      ���� 0 
thesubject 
theSubject \  a b a l  k k�� c d��   c��	set theBody to "Dear " & text item 6 of l & "," & linefeed & linefeed & "Attached is a copy of your current grade report for Calculus I.  Please review to make sure the information contained in the report is accurate." & linefeed & linefeed & "According to our Canvas site, all LTQs have been graded and this report reflects my current assessment of your mastery of course learning targets.  If you think that is a mistake and have a quiz that is not yet graded, please email me." & linefeed & linefeed & "Let me know if you have any questions or concerns about this report." & linefeed & linefeed & "Sincerely," & linefeed & "Dr. Miller" & linefeed & linefeed & fileName    d � e e@ 	 s e t   t h e B o d y   t o   " D e a r   "   &   t e x t   i t e m   6   o f   l   &   " , "   &   l i n e f e e d   &   l i n e f e e d   &   " A t t a c h e d   i s   a   c o p y   o f   y o u r   c u r r e n t   g r a d e   r e p o r t   f o r   C a l c u l u s   I .     P l e a s e   r e v i e w   t o   m a k e   s u r e   t h e   i n f o r m a t i o n   c o n t a i n e d   i n   t h e   r e p o r t   i s   a c c u r a t e . "   &   l i n e f e e d   &   l i n e f e e d   &   " A c c o r d i n g   t o   o u r   C a n v a s   s i t e ,   a l l   L T Q s   h a v e   b e e n   g r a d e d   a n d   t h i s   r e p o r t   r e f l e c t s   m y   c u r r e n t   a s s e s s m e n t   o f   y o u r   m a s t e r y   o f   c o u r s e   l e a r n i n g   t a r g e t s .     I f   y o u   t h i n k   t h a t   i s   a   m i s t a k e   a n d   h a v e   a   q u i z   t h a t   i s   n o t   y e t   g r a d e d ,   p l e a s e   e m a i l   m e . "   &   l i n e f e e d   &   l i n e f e e d   &   " L e t   m e   k n o w   i f   y o u   h a v e   a n y   q u e s t i o n s   o r   c o n c e r n s   a b o u t   t h i s   r e p o r t . "   &   l i n e f e e d   &   l i n e f e e d   &   " S i n c e r e l y , "   &   l i n e f e e d   &   " D r .   M i l l e r "   &   l i n e f e e d   &   l i n e f e e d   &   f i l e N a m e b  f g f l  k k�� h i��   h_Y set theBody to "Dear " & text item 6 of l & "," & linefeed & linefeed & "Attached is a copy of your current grade report for Calculus I.  According to my notes, all LTQs that have been submitted have been graded.  Please review to make sure the information contained in the report is accurate." & linefeed & linefeed & " If you think that is a mistake and have a quiz that is not yet graded, please email me." & linefeed & linefeed & "Let me know if you have any questions or concerns about this report." & linefeed & linefeed & "Sincerely," & linefeed & "Dr. Miller" & linefeed & linefeed & fileName    i � j j�   s e t   t h e B o d y   t o   " D e a r   "   &   t e x t   i t e m   6   o f   l   &   " , "   &   l i n e f e e d   &   l i n e f e e d   &   " A t t a c h e d   i s   a   c o p y   o f   y o u r   c u r r e n t   g r a d e   r e p o r t   f o r   C a l c u l u s   I .     A c c o r d i n g   t o   m y   n o t e s ,   a l l   L T Q s   t h a t   h a v e   b e e n   s u b m i t t e d   h a v e   b e e n   g r a d e d .     P l e a s e   r e v i e w   t o   m a k e   s u r e   t h e   i n f o r m a t i o n   c o n t a i n e d   i n   t h e   r e p o r t   i s   a c c u r a t e . "   &   l i n e f e e d   &   l i n e f e e d   &   "   I f   y o u   t h i n k   t h a t   i s   a   m i s t a k e   a n d   h a v e   a   q u i z   t h a t   i s   n o t   y e t   g r a d e d ,   p l e a s e   e m a i l   m e . "   &   l i n e f e e d   &   l i n e f e e d   &   " L e t   m e   k n o w   i f   y o u   h a v e   a n y   q u e s t i o n s   o r   c o n c e r n s   a b o u t   t h i s   r e p o r t . "   &   l i n e f e e d   &   l i n e f e e d   &   " S i n c e r e l y , "   &   l i n e f e e d   &   " D r .   M i l l e r "   &   l i n e f e e d   &   l i n e f e e d   &   f i l e N a m e g  k l k l  k k�� m n��   mLFset theBody to "Dear " & text item 6 of l & "," & linefeed & linefeed & "Attached is a copy of your current grade report for Calculus I.  Please review to make sure the information contained in the report is accurate." & linefeed & linefeed & "According to our Canvas site, all LTQs have been graded and this report reflects my current assessment of your mastery of course learning targets." & linefeed & linefeed & "Let me know if you have any questions or concerns about this report." & linefeed & linefeed & "Sincerely," & linefeed & "Dr. Miller" & linefeed & linefeed & fileName    n � o o� s e t   t h e B o d y   t o   " D e a r   "   &   t e x t   i t e m   6   o f   l   &   " , "   &   l i n e f e e d   &   l i n e f e e d   &   " A t t a c h e d   i s   a   c o p y   o f   y o u r   c u r r e n t   g r a d e   r e p o r t   f o r   C a l c u l u s   I .     P l e a s e   r e v i e w   t o   m a k e   s u r e   t h e   i n f o r m a t i o n   c o n t a i n e d   i n   t h e   r e p o r t   i s   a c c u r a t e . "   &   l i n e f e e d   &   l i n e f e e d   &   " A c c o r d i n g   t o   o u r   C a n v a s   s i t e ,   a l l   L T Q s   h a v e   b e e n   g r a d e d   a n d   t h i s   r e p o r t   r e f l e c t s   m y   c u r r e n t   a s s e s s m e n t   o f   y o u r   m a s t e r y   o f   c o u r s e   l e a r n i n g   t a r g e t s . "   &   l i n e f e e d   &   l i n e f e e d   &   " L e t   m e   k n o w   i f   y o u   h a v e   a n y   q u e s t i o n s   o r   c o n c e r n s   a b o u t   t h i s   r e p o r t . "   &   l i n e f e e d   &   l i n e f e e d   &   " S i n c e r e l y , "   &   l i n e f e e d   &   " D r .   M i l l e r "   &   l i n e f e e d   &   l i n e f e e d   &   f i l e N a m e l  p q p l  k k�� r s��   r�� set theBody to "Dear " & text item 6 of l & "," & linefeed & linefeed & "This is a test email email is going out to students in Miller's Calculus 1 class." & linefeed & linefeed & "This email would normally have a grade report attached in PDF format." & linefeed & linefeed & "And I would write, 'Let me know if you have any questions or concerns about this report.'" & linefeed & linefeed & "Sincerely," & linefeed & "Dr. Miller" & linefeed & linefeed & fileName    s � t t�   s e t   t h e B o d y   t o   " D e a r   "   &   t e x t   i t e m   6   o f   l   &   " , "   &   l i n e f e e d   &   l i n e f e e d   &   " T h i s   i s   a   t e s t   e m a i l   e m a i l   i s   g o i n g   o u t   t o   s t u d e n t s   i n   M i l l e r ' s   C a l c u l u s   1   c l a s s . "   &   l i n e f e e d   &   l i n e f e e d   &   " T h i s   e m a i l   w o u l d   n o r m a l l y   h a v e   a   g r a d e   r e p o r t   a t t a c h e d   i n   P D F   f o r m a t . "   &   l i n e f e e d   &   l i n e f e e d   &   " A n d   I   w o u l d   w r i t e ,   ' L e t   m e   k n o w   i f   y o u   h a v e   a n y   q u e s t i o n s   o r   c o n c e r n s   a b o u t   t h i s   r e p o r t . ' "   &   l i n e f e e d   &   l i n e f e e d   &   " S i n c e r e l y , "   &   l i n e f e e d   &   " D r .   M i l l e r "   &   l i n e f e e d   &   l i n e f e e d   &   f i l e N a m e q  u v u l  k k�� w x��   w)# set theBody to "Dear " & text item 6 of l & "," & linefeed & linefeed & "Attached is a copy of your current grade report for Calculus I.  According to my notes, all LTQs that have been submitted have been graded.  Please review to make sure the information contained in the report is accurate." & linefeed & linefeed & " If you think there is a mistake and if you have a quiz that is not yet graded, please email me." & linefeed & linefeed & "Let me know if you have any questions or concerns about this report." & linefeed & linefeed & "The deadline for taking a Learning target Quiz is noon on Friday, December 9th.  Taking the final exam is mandatory, so be sure you pre-register for a time to take it." & linefeed & linefeed & "Sincerely," & linefeed & "Dr. Miller" & linefeed & linefeed & fileName    x � y yF   s e t   t h e B o d y   t o   " D e a r   "   &   t e x t   i t e m   6   o f   l   &   " , "   &   l i n e f e e d   &   l i n e f e e d   &   " A t t a c h e d   i s   a   c o p y   o f   y o u r   c u r r e n t   g r a d e   r e p o r t   f o r   C a l c u l u s   I .     A c c o r d i n g   t o   m y   n o t e s ,   a l l   L T Q s   t h a t   h a v e   b e e n   s u b m i t t e d   h a v e   b e e n   g r a d e d .     P l e a s e   r e v i e w   t o   m a k e   s u r e   t h e   i n f o r m a t i o n   c o n t a i n e d   i n   t h e   r e p o r t   i s   a c c u r a t e . "   &   l i n e f e e d   &   l i n e f e e d   &   "   I f   y o u   t h i n k   t h e r e   i s   a   m i s t a k e   a n d   i f   y o u   h a v e   a   q u i z   t h a t   i s   n o t   y e t   g r a d e d ,   p l e a s e   e m a i l   m e . "   &   l i n e f e e d   &   l i n e f e e d   &   " L e t   m e   k n o w   i f   y o u   h a v e   a n y   q u e s t i o n s   o r   c o n c e r n s   a b o u t   t h i s   r e p o r t . "   &   l i n e f e e d   &   l i n e f e e d   &   " T h e   d e a d l i n e   f o r   t a k i n g   a   L e a r n i n g   t a r g e t   Q u i z   i s   n o o n   o n   F r i d a y ,   D e c e m b e r   9 t h .     T a k i n g   t h e   f i n a l   e x a m   i s   m a n d a t o r y ,   s o   b e   s u r e   y o u   p r e - r e g i s t e r   f o r   a   t i m e   t o   t a k e   i t . "   &   l i n e f e e d   &   l i n e f e e d   &   " S i n c e r e l y , "   &   l i n e f e e d   &   " D r .   M i l l e r "   &   l i n e f e e d   &   l i n e f e e d   &   f i l e N a m e v  z { z r   k � | } | b   k � ~  ~ b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k � � � � b   k  � � � b   k { � � � b   k w � � � m   k n � � � � � 
 D e a r   � n   n v � � � 4   o v�� �
�� 
citm � m   r u����  � o   n o���� 0 l   � m   w z � � � � �  , � 1   { ~��
�� 
lnfd � 1    ���
�� 
lnfd � m   � � � � � � �� I   g r a d e d   s o m e   m o r e   L T Q s ,   t o n i g h t .     T h e r e   w a s   a t   l e a s t   o n e   f r o m   y o u ,   s o   I   d e c i d e d   t o   s e n d   a n   u p d a t e d   g r a d e   r e p o r t .     P l e a s e   r e v i e w   t o   m a k e   s u r e   t h e   i n f o r m a t i o n   c o n t a i n e d   i n   t h e   r e p o r t   i s   a c c u r a t e . � 1   � ���
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
lnfd � m   � � � � � � �N T h e   d e a d l i n e   f o r   t a k i n g   a   L e a r n i n g   t a r g e t   Q u i z   i s   n o o n   o n   F r i d a y ,   D e c e m b e r   9 t h .     T a k i n g   t h e   f i n a l   e x a m   i s   m a n d a t o r y ,   s o   b e   s u r e   y o u   p r e - r e g i s t e r   f o r   a   t i m e   t o   t a k e   i t . � 1   � ���
�� 
lnfd � 1   � ���
�� 
lnfd � m   � � � � � � �  S i n c e r e l y , � 1   � ���
�� 
lnfd � m   � � � � � � �  D r .   M i l l e r � 1   � ���
�� 
lnfd � 1   � ���
�� 
lnfd  o   � ����� 0 filename fileName } o      ���� 0 thebody theBody {  � � � r   �4 � � � b   �0 � � � b   �, � � � b   �( � � � b   �$ � � � b   �  � � � b   � � � � b   � � � � b   � � � � b   � � � � b   � � � � b   � � � � b   � � � � b   �  � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 
 D e a r   � n   � � � � � 4   � ��� �
�� 
citm � m   � �����  � o   � ����� 0 l   � m   � � � � � � �  , � 1   � ���
�� 
lnfd � 1   � ���
�� 
lnfd � m   � � � � � � �� I   g r a d e d   s o m e   m o r e   L T Q s ,   t h i s   m o r n i n g .     T h e r e   w a s   a t   l e a s t   o n e   f r o m   y o u ,   s o   I   d e c i d e d   t o   s e n d   y o u   a n   u p d a t e d   g r a d e   r e p o r t .     P l e a s e   r e v i e w   t o   m a k e   s u r e   t h e   i n f o r m a t i o n   c o n t a i n e d   i n   t h e   r e p o r t   i s   a c c u r a t e . � 1   � ���
�� 
lnfd � 1   � ���
�� 
lnfd � m   � � � � � � � �   I f   y o u   t h i n k   t h e r e   i s   a   m i s t a k e   a n d   i f   y o u   h a v e   a   q u i z   t h a t   i s   n o t   y e t   g r a d e d ,   p l e a s e   e m a i l   m e . � 1   � ���
�� 
lnfd � 1   � ���
�� 
lnfd � m    � � � � � � L e t   m e   k n o w   i f   y o u   h a v e   a n y   q u e s t i o n s   o r   c o n c e r n s   a b o u t   t h i s   r e p o r t . � 1  ��
�� 
lnfd � 1  ��
�� 
lnfd � m   � � � � �h T h e   d e a d l i n e   f o r   t a k i n g   a   L e a r n i n g   t a r g e t   Q u i z   i s   n o o n   o n   F r i d a y ,   D e c e m b e r   9 t h .     T a k i n g   t h e   f i n a l   e x a m   i s   m a n d a t o r y ,   s o   b e   s u r e   y o u   t a k e   i t   t o n i g h t   i f   y o u   h a v e n ' t   a l r e a d y   t a k e n   i t . � 1  ��
�� 
lnfd � 1  ��
�� 
lnfd � m   � � � � �  S i n c e r e l y , � 1  ��
�� 
lnfd � m   # � � � � �  D r .   M i l l e r � 1  $'��
�� 
lnfd � 1  (+��
�� 
lnfd � o  ,/���� 0 filename fileName � o      ���� 0 thebody theBody �  ��  O  5 k  ;  r  ;i I ;e����
�� .corecrel****      � null��   ��	

�� 
kocl	 m  =@��
�� 
bcke
 ����
�� 
prdt K  C_ ��
�� 
subj o  FI���� 0 
thesubject 
theSubject ��
�� 
ctnt b  LW b  LS o  LO���� 0 thebody theBody o  OR��
�� 
ret  o  SV��
�� 
ret  ����
�� 
pvis m  Z[��
�� boovtrue��  ��   o      ���� 0 thenewmessage theNewMessage  O  j	 k  p  r  pw m  pq��
�� boovtrue 1  qv��
�� 
pvis   r  x�!"! o  x{���� 0 	thesender 	theSender" 1  {���
�� 
sndr  #$# I ������%
�� .corecrel****      � null��  % ��&'
�� 
kocl& m  ����
�� 
trcp' ��()
�� 
insh( n  ��*+*  ;  ��+ 2 ����
�� 
trcp) ��,��
�� 
prdt, K  ��-- ��./
�� 
pnam. n  ��010 4  ����2
�� 
citm2 m  ������ 1 o  ������ 0 l  / ��3��
�� 
radd3 n  ��454 4  ����6
�� 
citm6 m  ������ 
5 o  ������ 0 l  ��  ��  $ 787 Q  ��9:;9 k  ��<< =>= I ������?
�� .corecrel****      � null��  ? ��@A
�� 
kocl@ m  ����
�� 
attsA ��BC
�� 
prdtB K  ��DD ��E��
�� 
atfnE o  ������ 0 theattachment theAttachment��  C ��F��
�� 
inshF n  ��GHG 9  ����
�� 
inslH l ��I��~I n  ��JKJ 4 ���}L
�} 
cworL m  ���|�|��K l ��M�{�zM 4 ���yN
�y 
cparN m  ���x�x���{  �z  �  �~  ��  > O�wO r  ��PQP m  ���v�v  Q o      �u�u 0 message_attachment  �w  : R      �tR�s
�t .ascrerr ****      � ****R o      �r�r 0 errmess  �s  ; l ��STUS k  ��VV WXW l ��YZ[Y I ���q\�p
�q .ascrcmnt****      � ****\ o  ���o�o 0 errmess  �p  Z   log the error   [ �]]    l o g   t h e   e r r o rX ^�n^ r  ��_`_ m  ���m�m ` o      �l�l 0 message_attachment  �n  T   oops   U �aa 
   o o p s8 bcb I � �kd�j
�k .ascrcmnt****      � ****d b  ��efe m  ��gg �hh * m e s s a g e _ a t t a c h m e n t   =  f o  ���i�i 0 message_attachment  �j  c iji l �hkl�h  k  			send   l �mm  	 	 	 s e n dj non I �gp�f
�g .sysodelanull��� ��� nmbrp m  �e�e �f  o q�dq l �crs�c  r 
 send   s �tt  s e n d�d   o  jm�b�b 0 thenewmessage theNewMessage uvu l 

�awx�a  w ( "		tell (make new outgoing message)   x �yy D 	 	 t e l l   ( m a k e   n e w   o u t g o i n g   m e s s a g e )v z{z l 

�`|}�`  | , &			--set theFile to fiest file in ....   } �~~ L 	 	 	 - - s e t   t h e F i l e   t o   f i e s t   f i l e   i n   . . . .{ � l 

�_���_  � % 			set theAttachment to theFile   � ��� > 	 	 	 s e t   t h e A t t a c h m e n t   t o   t h e F i l e� ��� l 

�^���^  � x r			make new to recipient at end of to recipients with properties {name:text item 2 of l, address:text item 3 of l}   � ��� � 	 	 	 m a k e   n e w   t o   r e c i p i e n t   a t   e n d   o f   t o   r e c i p i e n t s   w i t h   p r o p e r t i e s   { n a m e : t e x t   i t e m   2   o f   l ,   a d d r e s s : t e x t   i t e m   3   o f   l }� ��� l 

�]���]  � v p			-- make new attachment with properties {file name:theAttachment} at after the last word of the last paragraph   � ��� � 	 	 	 - -   m a k e   n e w   a t t a c h m e n t   w i t h   p r o p e r t i e s   { f i l e   n a m e : t h e A t t a c h m e n t }   a t   a f t e r   t h e   l a s t   w o r d   o f   t h e   l a s t   p a r a g r a p h� ��� l 

�\���\  �  			send   � ���  	 	 	 s e n d� ��� l 

�[���[  �  
			delay 5   � ���  	 	 	 d e l a y   5� ��Z� l 

�Y���Y  �  
		end tell   � ���  	 	 e n d   t e l l�Z   m  58���                                                                                  emal  alis    (  Macintosh HD               �	�iBD ����Mail.app                                                       �����	�i        ����  
 cu             Applications  /:System:Applications:Mail.app/     M a i l . a p p    M a c i n t o s h   H D  System/Applications/Mail.app  / ��  ��  �� 0 l   , n    ��� 2   �X
�X 
cpar� o    �W�W 0 	addresses  ��  ��  ��       �V���V  � �U
�U .aevtoappnull  �   � ****� �T��S�R���Q
�T .aevtoappnull  �   � ****� k    ��  ��  ��  "��  )�P�P  �S  �R  � �O�N�O 0 l  �N 0 errmess  � F �M   '�L�K�J�I�H P�G 8�F�E��D�C�B�A�@�?�> Y�= _�< ��; ��: � � � � � ��9 � � � � � � � ���8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#g�"�M 0 	addresses  
�L 
txdl
�K 
cpar
�J 
kocl
�I 
cobj
�H .corecnte****       ****
�G 
cfol�F 0 
folderpath 
folderPath
�E 
file�  
�D 
pnam
�C 
citm�B 
�A 
alis�@ 0 thefile theFile�? 0 filename fileName�> 0 theattachment theAttachment�= 0 	thesender 	theSender�< 0 
thesubject 
theSubject�; 
�: 
lnfd�9 0 thebody theBody
�8 
bcke
�7 
prdt
�6 
subj
�5 
ctnt
�4 
ret 
�3 
pvis�2 
�1 .corecrel****      � null�0 0 thenewmessage theNewMessage
�/ 
sndr
�. 
trcp
�- 
insh
�, 
radd�+ 

�* 
atts
�) 
atfn
�( 
cwor
�' 
insl�& 0 message_attachment  �% 0 errmess  �$  
�# .ascrcmnt****      � ****
�" .sysodelanull��� ��� nmbr�Q�E�O�E�O�*�,FO��-[��l kh  � /*��/E�O��k/�[�,\Z�a a /@1a &E` O_ �,E` UO_ E` Oa E` Oa E` Oa �a a /%a %_ %_ %a %_ %_ %a %_ %_ %a  %_ %_ %a !%_ %_ %a "%_ %a #%_ %_ %_ %E` $Oa %�a a /%a &%_ %_ %a '%_ %_ %a (%_ %_ %a )%_ %_ %a *%_ %_ %a +%_ %a ,%_ %_ %_ %E` $Oa - �*�a .a /a 0_ a 1_ $_ 2%_ 2%a 3ea a 4 5E` 6O_ 6 �e*a 3,FO_ *a 7,FO*�a 8a 9*a 8-6a /�a a /a :�a a ;/a 4a  5O 1*�a <a /a =_ la 9*�i/a >i/a ?4a  5OjE` @W X A B�j COkE` @Oa D_ @%j COlj EOPUOPU[OY�ascr  ��ޭ