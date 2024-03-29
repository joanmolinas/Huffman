###!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
###! INDEX DEL JOC DEL MODUL HUFFMAN
###!    0 sequencia buida [k = 0, |S| = 0]
###!    1 sequencia amb un element [k = 1, |S| = 1]: 1
###!    2 sequencia amb dos elements [|S| = 2]
###!      2.1 els dos elements son diferents [k = 2]: 1 2
###!      2.2 els dos elements son iguals [k = 1]: 1 1
###!    3 sequencia amb tres elements [|S| = 3]
###!      3.1 els tres elements son diferents [k = 3]: 1 2 3
###!      3.2 el primer i el segon elements son iguals [k = 2]: 1 1 2
###!      3.3 el primer i el tercer elements son iguals [k = 2]: 1 2 1
###!      3.4 el segon i el tercer elements son iguals [k = 2]: 1 2 2
###!      3.5 els tres elements son iguals [k = 1]: 1 1 1
###!    4 sequencia amb quatre elements [|S| = 4]
###!      4.1 els quatre elements son diferents [k = 4]: 1 2 3 4
###!      4.2 els primer i el segon elements son iguals [k = 3]: 1 1 2 3
###!      4.3 els primer i el tercer elements son iguals [k = 3]: 1 2 1 3
###!      4.4 el primer i el quart elements son iguals [k = 3]: 1 2 3 1
###!      4.5 el segon i el tercer elements son iguals [k = 3]: 1 2 2 3
###!      4.6 el segon i el quart elements son iguals [k = 3]: 1 2 3 2
###!      4.7 el tercer i el quart elements son iguals [k = 3]: 1 2 3 3
###!      4.8 el primer, segon i tercer elements son iguals [k = 2]: 1 1 1 2
###!      4.9 el primer, segon i quart elements son iguals [k = 2]: 1 1 2 1
###!      4.10 el primer, tercer i quart elements son iguals [k = 2]: 1 2 1 1
###!      4.11 el segon, tercer i quart elements son iguals [k = 2]: 1 2 2 2
###!      4.12 el primer i el segon elements son iguals,
###!           i el tercer i el quart tambe [k = 2]: 1 1 2 2
###!      4.13 el primer i el tercer elements son iguals,
###!           i el segon i el quart tambe [k = 2]: 1 2 1 2
###!      4.14 el primer i el quart elements son iguals,
###!           i el segon i el tercer tambe [k = 2]: 1 2 2 1
###!      4.15 els quatre elements son iguals [k = 1]: 1 1 1 1
###!    5 sequencia amb cinc elements [|S| = 5]
###!      5.1 els cinc elements son diferents [k = 5]: 1 2 3 4 5
###!      5.2 el primer i el tercer elements son iguals [k = 4]: 1 2 1 3 4
###!      5.3 el segon i el quart elements son iguals [k = 4]: 1 2 3 2 4
###!      5.4 el tercer i el cinque elements son iguals [k = 4]: 1 2 3 4 3
###!      5.5 el quart i el cinque elements son iguals [k = 4]: 1 2 3 4 4
###!      5.6 el primer, tercer i cinque elements son iguals [k = 3]: 1 2 1 3 1
###!      5.7 el segon, quart i cinque elements son iguals [k = 3]: 1 2 3 2 2
###!      5.8 el tercer, quart i cinque elements son iguals [k = 3]: 1 2 3 3 3
###!      5.9 el primer i el tercer elements son iguals,
###!          i el segon i el cinque elements tambe [k = 3]: 1 2 1 3 2
###!      5.10 el primer i el segon elements son iguals,
###!           i el quart i el cinque elements tambe [k = 3]: 1 1 2 3 3
###!      5.11 el segon i el quart elements son iguals,
###!           i el tercer i el cinque elements tambe [k = 3]: 1 2 3 2 3
###!      5.12 el primer, el tercer i el cinque elements son iguals
###!           [k = 2]: 1 2 1 2 1
###!      5.13 el segon, quart i cinque elements son iguals
###!           [k = 2]: 1 2 1 2 2
###!      5.14 el primer, segon, tercer y cinque elements son iguals
###!           [k = 2]: 1 1 1 2 1
###!      5.15 el segon, tercer, quart i cinque elements son iguals
###!           [k = 2]: 1 2 2 2 2
###!      5.15 els cinc elements son iguals [k = 1]: 1 1 1 1 1
###!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
###!
###!----------------------------------------------------------------------
###0 sequencia buida [k = 0, |S| = 0]
###!----------------------------------------------------------------------
###!
#init s0 vector<nat>
###!
#huffman s0
Error::huffman:21:Sequencia massa curta
##Error::huffman:21:Sequencia massa curta
###!
#s0 destroy
###!
###!
###!
###!----------------------------------------------------------------------
###1 sequencia amb un element [k = 1, |S| = 1]: 1
###!----------------------------------------------------------------------
###!
#init s1 vector<nat>
#insereix_v 1
###!
#huffman s1
Error::huffman:21:Sequencia massa curta
##Error::huffman:21:Sequencia massa curta
###!
#s1 destroy
###!
###!
###!
###!----------------------------------------------------------------------
###2 sequencia amb dos elements [|S| = 2]
###!----------------------------------------------------------------------
###!
###!----------------------------------------------------------------------
###2.1 els dos elements son diferents [k = 2]: 1 2
###!----------------------------------------------------------------------
###!
#init s2A vector<nat>
#insereix_v 1
#insereix_v 2
###!
#huffman s2A
0 1
##0 1
###!
#s2A destroy
###!
###!
###!----------------------------------------------------------------------
###2.2 els dos elements son iguals [k = 1]: 1 1
###!----------------------------------------------------------------------
###!
#init s2Z vector<nat>
#insereix_v 1
#insereix_v 1
###!
#huffman s2Z

##
###!**** LA RESPOSTA ANTERIOR DEL METODE HUFFMAN ES UN VECTOR
###!**** DE CODIS AMB UN UNIC ELEMENT: LA CADENA BUIDA ""
###!
###!
###!
###!----------------------------------------------------------------------
###3 sequencia amb tres elements [|S| = 3]
###!----------------------------------------------------------------------
###!
###!----------------------------------------------------------------------
###3.1 els tres elements son diferents [k = 3]: 1 2 3
###!----------------------------------------------------------------------
###!
#init s3A vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 3
###!
#huffman s3A
10 11 0
##10 11 0
###!
#s3A destroy
###!
###!
###!----------------------------------------------------------------------
###3.2 el primer i el segon elements son iguals [k = 2]: 1 1 2
###!----------------------------------------------------------------------
###!
#init s3B vector<nat>
#insereix_v 1
#insereix_v 1
#insereix_v 2
###!
#huffman s3B
1 0
##1 0
###!
#s3B destroy s3B
###!
###!
###!----------------------------------------------------------------------
###3.3 el primer i el tercer elements son iguals [k = 2]: 1 2 1
###!----------------------------------------------------------------------
###!
#init s3C vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 1
###!
#huffman s3C
1 0
##1 0
###!
#s3C destroy
###!
###!
###!----------------------------------------------------------------------
###3.4 el segon i el tercer elements son iguals [k = 2]: 1 2 2
###!----------------------------------------------------------------------
###!
#init s3D vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 2
###!
#huffman s3D
0 1
##0 1
###!
#s3D destroy
###!
###!
###!----------------------------------------------------------------------
###3.5 els tres elements son iguals [k = 1]: 1 1 1
###!----------------------------------------------------------------------
###!
#init s3Z vector<nat>
#insereix_v 1
#insereix_v 1
#insereix_v 1
###!
#huffman s3Z

##
###!**** LA RESPOSTA ANTERIOR DEL METODE HUFFMAN ES UN VECTOR
###!**** DE CODIS AMB UN UNIC ELEMENT: LA CADENA BUIDA ""
###!
#s3Z destroy s3Z
###!
###!
###!
###!----------------------------------------------------------------------
###4 sequencia amb quatre elements [|S| = 4]
###!----------------------------------------------------------------------
###!
###!----------------------------------------------------------------------
###4.1 els quatre elements son diferents [k = 4]: 1 2 3 4
###!----------------------------------------------------------------------
###!
#init s4A vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 3
#insereix_v 4
###!
#huffman s4A
00 01 10 11
##00 01 10 11
###!
#s4A destroy
###!
###!
###!----------------------------------------------------------------------
###4.2 els primer i el segon elements son iguals [k = 3]: 1 1 2 3
###!----------------------------------------------------------------------
###!
#init s4B vector<nat>
#insereix_v 1
#insereix_v 1
#insereix_v 2
#insereix_v 3
###!
#huffman s4B
0 10 11
##0 10 11
###!
#s4B destroy
###!
###!
###!----------------------------------------------------------------------
###4.3 els primer i el tercer elements son iguals [k = 3]: 1 2 1 3
###!----------------------------------------------------------------------
###!
#init s4C vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 1
#insereix_v 3
###!
#huffman s4C
0 10 11
##0 10 11
###!
#s4C destroy
###!
###!
###!----------------------------------------------------------------------
###4.4 el primer i el quart elements son iguals [k = 3]: 1 2 3 1
###!----------------------------------------------------------------------
###!
#init s4D vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 3
#insereix_v 1
###!
#huffman s4D
0 10 11
##0 10 11
###!
#s4D destroy
###!
###!
###!----------------------------------------------------------------------
###4.5 el segon i el tercer elements son iguals [k = 3]: 1 2 2 3
###!----------------------------------------------------------------------
###!
#init s4E vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 2
#insereix_v 3
###!
#huffman s4E
00 1 01
##00 1 01
###!
#s4E destroy
###!
###!
###!----------------------------------------------------------------------
###4.6 el segon i el quart elements son iguals [k = 3]: 1 2 3 2
###!----------------------------------------------------------------------
###!
#init s4F vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 3
#insereix_v 2
###!
#huffman s4F
00 1 01
##00 1 01
###!
#s4F destroy
###!
###!
###!----------------------------------------------------------------------
###4.7 el tercer i el quart elements son iguals [k = 3]: 1 2 3 3
###!----------------------------------------------------------------------
###!
#init s4G vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 3
#insereix_v 3
###!
#huffman s4G
00 01 1
##00 01 1
###!
#s4G destroy
###!
###!
###!-----------------------------------------------------------------------
###4.8 el primer, segon i tercer elements son iguals [k = 2]: 1 1 1 2
###!-----------------------------------------------------------------------
###!
#init s4H vector<nat>
#insereix_v 1
#insereix_v 1
#insereix_v 1
#insereix_v 2
###!
#huffman s4H
1 0
##1 0
###!
#s4H destroy
###!
###!
###!-----------------------------------------------------------------------
###4.9 el primer, segon i quart elements son iguals [k = 2]: 1 1 2 1
###!-----------------------------------------------------------------------
###!
#init s4I vector<nat>
#insereix_v 1
#insereix_v 1
#insereix_v 2
#insereix_v 1
###!
#huffman s4I
1 0
##1 0
###!
#s4I destroy
###!
###!
###!-----------------------------------------------------------------------
###4.10 el primer, tercer i quart elements son iguals [k = 2]: 1 2 1 1
###!-----------------------------------------------------------------------
###!
#init s4J vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 1
#insereix_v 1
###!
#huffman s4J
1 0
##1 0
###!
#s4J destroy
###!
###!
###!-----------------------------------------------------------------------
###4.11 el segon, tercer i quart elements son iguals [k = 2]: 1 2 2 2
###!-----------------------------------------------------------------------
###!
#init s4K vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 2
#insereix_v 2
###!
#huffman s4K
0 1
##0 1
###!
#s4K destroy
###!
###!
###!----------------------------------------------------------------------
###4.12 el primer i el segon elements son iguals
###!    i el tercer i el quart tambe [k = 2]: 1 1 2 2
###!----------------------------------------------------------------------
###!
#init s4L vector<nat>
#insereix_v 1
#insereix_v 1
#insereix_v 2
#insereix_v 2
###!
#huffman s4L
0 1
##0 1
###!
#s4L destroy
###!
###!
###!----------------------------------------------------------------------
###4.13 el primer i el tercer elements son iguals
###!    i el segon i el quart tambe [k = 2]: 1 2 1 2
###!----------------------------------------------------------------------
###!
#init s4M vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 1
#insereix_v 2
###!
#huffman s4M
0 1
##0 1
###!
#s4M destroy
###!
###!
###!----------------------------------------------------------------------
###4.14 el primer i el quart elements son iguals
###!    i el segon i el tercer tambe [k = 2]: 1 2 2 1
###!----------------------------------------------------------------------
###!
#init s4N vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 2
#insereix_v 1
###!
#huffman s4N
0 1
##0 1
###!
#s4N destroy
###!
###!
###!-----------------------------------------------------------------------
###4.15 els quatre elements son iguals [k = 1]: 1 1 1 1
###!-----------------------------------------------------------------------
###!
#init s4Z vector<nat>
#insereix_v 1
#insereix_v 1
#insereix_v 1
#insereix_v 1
###!
#huffman s4Z

##
###!**** LA RESPOSTA ANTERIOR DEL METODE HUFFMAN ES UN VECTOR
###!**** DE CODIS AMB UN UNIC ELEMENT: LA CADENA BUIDA ""
###!
#s4Z destroy
###!
###!
###!
###!----------------------------------------------------------------------
###5 sequencia amb cinc elements [|S| = 5]
###!----------------------------------------------------------------------
###!
###!----------------------------------------------------------------------
###5.1 els cinc elements son diferents [k = 5]: 1 2 3 4 5
###!----------------------------------------------------------------------
###!
#init s5A vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 3
#insereix_v 4
#insereix_v 5
###!
#huffman s5A
110 111 00 01 10
##110 111 00 01 10
###!
#s5A destroy
###!
###!
###!----------------------------------------------------------------------
###5.2 el primer i el tercer elements son iguals [k = 4]: 1 2 1 3 4
###!----------------------------------------------------------------------
###!
#init s5B vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 1
#insereix_v 3
#insereix_v 4
###!
#huffman s5B
11 00 01 10
##11 00 01 10
###!
#s5B destroy
###!
###!
###!-----------------------------------------------------------------------
###5.3 el segon i el quart elements son iguals [k = 4]: 1 2 3 2 4
###!-----------------------------------------------------------------------
###!
#init s5C vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 3
#insereix_v 2
#insereix_v 4
###!
#huffman s5C
110 0 111 10
##110 0 111 10
###!
#s5C destroy
###!
###!
###!-----------------------------------------------------------------------
###5.4 el tercer i el cinque elements son iguals [k = 4]: 1 2 3 4 3
###!-----------------------------------------------------------------------
###!
#init s5D vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 3
#insereix_v 4
#insereix_v 3
###!
#huffman s5D
110 111 0 10
##110 111 0 10
###!
#s5D destroy
###!
###!
###!-----------------------------------------------------------------------
###5.5 el quart i el cinque elements son iguals [k = 4]: 1 2 3 4 4
###!-----------------------------------------------------------------------
###!
#init s5E vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 3
#insereix_v 4
#insereix_v 4
###!
#huffman s5E
110 111 10 0
##110 111 10 0
###!
#s5E destroy
###!
###!
###!-----------------------------------------------------------------------
###5.6 el primer, tercer i cinque elements son iguals [k = 3]: 1 2 1 3 1
###!-----------------------------------------------------------------------
###!
#init s5F vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 1
#insereix_v 3
#insereix_v 1
###!
#huffman s5F
1 00 01
##1 00 01
###!
#s5F destroy
###!
###!
###!----------------------------------------------------------------------
###5.7 el segon, quart i cinque elements son iguals [k = 3]: 1 2 3 2 2
###!----------------------------------------------------------------------
###!
#init s5G vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 3
#insereix_v 2
#insereix_v 2
###!
#huffman s5G
00 1 01
##00 1 01
###!
#s5G destroy
###!
###!
###!----------------------------------------------------------------------
###5.8 el tercer, quart i cinque elements son iguals [k = 3]: 1 2 3 3 3
###!----------------------------------------------------------------------
###!
#init s5H vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 3
#insereix_v 3
#insereix_v 3
###!
#huffman s5H
00 01 1
##00 01 1
###!
#s5H destroy
###!
###!
###!-----------------------------------------------------------------------
###5.9 el primer i el tercer elements son iguals,
###!   i el segon i el cinque elements tambe [k = 3]: 1 2 1 3 2
###!-----------------------------------------------------------------------
###!
#init s5I vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 1
#insereix_v 3
#insereix_v 2
###!
#huffman s5I
11 0 10
##11 0 10
###!
#s5I destroy
###!
###!
###!-----------------------------------------------------------------------
###5.10 el primer i el segon elements son iguals,
###!   i el quart i el cinque elements tambe [k = 3]: 1 1 2 3 3
###!-----------------------------------------------------------------------
###!
#init s5J vector<nat>
#insereix_v 1
#insereix_v 1
#insereix_v 2
#insereix_v 3
#insereix_v 3
###!
#huffman s5J
11 10 0
##11 10 0
###!
#s5J destroy
###!
###!
###!----------------------------------------------------------------------
###5.11 el segon i el quart elements son iguals,
###!   i el tercer i el cinque elements tambe [k = 3]: 1 2 3 2 3
###!----------------------------------------------------------------------
###!
#init s5K vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 3
#insereix_v 2
#insereix_v 3
###!
#huffman s5K
10 11 0
##10 11 0
###!
#s5K destroy
###!
###!
###!-----------------------------------------------------------------------
###5.12 el primer, el tercer i el cinque elements son iguals
###!    [k = 2]: 1 2 1 2 1
###!-----------------------------------------------------------------------
###!
#init s5L vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 1
#insereix_v 2
#insereix_v 1
###!
#huffman s5L
1 0
##1 0
###!
#s5L destroy
###!
###!
###!-----------------------------------------------------------------------
###5.13 el segon, quart i cinque elements son iguals
###!    [k = 2]: 1 2 1 2 2
###!-----------------------------------------------------------------------
###!
#init s5M vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 1
#insereix_v 2
#insereix_v 2
###!
#huffman s5M
0 1
##0 1
###!
#s5M destroy
###!
###!
###!-----------------------------------------------------------------------
###5.14 el primer, segon, tercer y cinque elements son iguals
###!    [k = 2]: 1 1 1 2 1
###!-----------------------------------------------------------------------
###!
#init s5N vector<nat>
#insereix_v 1
#insereix_v 1
#insereix_v 1
#insereix_v 2
#insereix_v 1
###!
#huffman s5N
1 0
##1 0
###!
#s5N destroy
###!
###!
###!-----------------------------------------------------------------------
###5.15 el segon, tercer, quart i cinque elements son iguals
###!    [k = 2]: 1 2 2 2 2
###!-----------------------------------------------------------------------
###!
#init s5O vector<nat>
#insereix_v 1
#insereix_v 2
#insereix_v 2
#insereix_v 2
#insereix_v 2
###!
#huffman s5O
0 1
##0 1
###!
#s5O destroy
###!
###!
###!-----------------------------------------------------------------------
###5.15 els cinc elements son iguals [k = 1]: 1 1 1 1 1
###!-----------------------------------------------------------------------
###!
#init s5Z vector<nat>
#insereix_v 1
#insereix_v 1
#insereix_v 1
#insereix_v 1
#insereix_v 1
###!
#huffman s5Z

##
###!**** LA RESPOSTA ANTERIOR DEL METODE HUFFMAN ES UN VECTOR
###!**** DE CODIS AMB UN UNIC ELEMENT: LA CADENA BUIDA ""
###!
#s5Z destroy
###!
#quit
[0/0]
