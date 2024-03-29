###!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
###! INDEX DEL JOC DE PROVES DEL MODUL ARBBIN I ITERADOR D'ARBBIN
###!    1 arbbin buit
###!    2 arbbin amb un node: (1)
###!    3 arbbin amb tres nodes: ((1) 3 (2))
###!    4 arbbin amb cinc nodes
###!    	 4.1 arbbin 5 versio A: (((1) 3 (2)) 5 (4))
###!    	 4.2 arbbin 5 versio B: ((1) 5 ((2) 4 (3)))
###!    5 arbbin amb set nodes
###!    	 5.1 arbbin 7 versio A: ((((1) 3 (2)) 5 (4)) 7 (6))
###!    	 5.2 arbbin 7 versio B: (((1) 5 ((2) 4 (3))) 7 (6))
###!    	 5.3 arbbin 7 versio C: (((1) 3 (2)) 7 ((4) 6 (5)))
###!    	 5.4 arbbin 7 versio D: ((1) 7 (((2) 4 (3)) 6 (5)))
###!    	 5.5 arbbin 7 versio E: ((1) 7 ((2) 6 ((3) 5 (4))))
###!    6 arbbin amb quintze nodes
###!    	 6.1 arbbin 15 versio A: alineat pel fill esquerra
###!    	 6.2 arbbin 15 versio B: balancejat
###!    	 6.3 arbbin 15 versio C: alineat pel fill dreta
###!    7 construccio per copia
###!    	 7.1 arbbin amb un node
###!    	 7.2 arbbin amb tres nodes
###!    	 7.3 arbbin amb set nodes. versio B: (((1) 5 ((2) 4 (3))) 7 (6))
###!    8 destruccio parcial
###!    	 8.1 destruccio des de les fulles fins a l'arrel
###!    	 8.2 destruccio des de l'arrel a les fulles
###!    9 assignacio
###!    	 9.1 arbbin amb un node
###!    	 9.2 arbbin amb tres nodes
###!    	 9.3 arbbin amb set nodes. versio B: (((1) 5 ((2) 4 (3))) 7 (6))
###!    10 assignacio amb segon us
###!    11 iterador d'arbbin
###!      11.1 iterador sobre arbbin buit
###!      11.2 constructor per copia d'iterador d'arbbin
###!      11.3 assignacio d'iterador d'arbbin
###!+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
###!
###!----------------------------------------------------------------------
###1 arbbin buit
###!----------------------------------------------------------------------
###!
#init abuit arbbin<int> 
###!
#arrel
Error::arbbin::iterador:11:Iterador nul
##Error::arbbin::iterador:11:Iterador nul
#size
0
##0
#print_arbbin

##
#abuit destroy
###!
###!
###!
###!----------------------------------------------------------------------
###2 arbbin amb un node: (1)
###!----------------------------------------------------------------------
###!
#init ab1_0 arbbin<int> 101
###!
#arrel
101
##101
#size
1
##1
#print_arbbin
101 
##101 
#ab1_0 destroy
###!
###!
###!
###!----------------------------------------------------------------------
###3 arbbin amb tres nodes: ((1) 3 (2))
###!----------------------------------------------------------------------
###!
#init ab3_L arbbin<int> 201
#init ab3_R arbbin<int> 202
#init ab3_0 arbbin<int> 203 ab3_L ab3_R
###!
#ab3_0 arrel
203
##203
#ab3_0 size ab3_0
3
##3
#ab3_0 print_arbbin
201 202 203 
##201 202 203 
###!
#ab3_L arrel
201
##201
#ab3_L size
1
##1
#ab3_L print_arbbin
201 
##201 
###!
#ab3_R arrel
202
##202
#ab3_R size
1
##1
#ab3_R print_arbbin
202 
##202 
###!
#ab3_L destroy
#ab3_R destroy
#ab3_0 destroy
###!
###!
###!
###!----------------------------------------------------------------------
###4 arbbin amb cinc nodes
###!----------------------------------------------------------------------
###!
###!----------------------------------------------------------------------
###4.1 arbbin 5 versio A: (((1) 3 (2)) 5 (4))
###!----------------------------------------------------------------------
###!
#init ab5A_LL arbbin<int> 311
#init ab5A_LR arbbin<int> 312
#init ab5A_L arbbin<int> 313 ab5A_LL ab5A_LR
#init ab5A_R arbbin<int> 314
#init ab5A_0 arbbin<int> 315 ab5A_L ab5A_R
###!
#ab5A_0 arrel
315
##315
#ab5A_0 size
5
##5
#ab5A_0 print_arbbin
311 312 313 314 315 
##311 312 313 314 315 
###!
#ab5A_L arrel
313
##313
#ab5A_L size
3
##3
#ab5A_L print_arbbin
311 312 313 
##311 312 313 
###!
#ab5A_LL arrel 
311
##311
#ab5A_LL size
1
##1
#ab5A_LL print_arbbin
311 
##311 
###!
#ab5A_LR arrel
312
##312
#ab5A_LR size
1
##1
#ab5A_LR print_arbbin
312 
##312 
###!
#ab5A_R arrel
314
##314
#ab5A_R size
1
##1
#ab5A_R print_arbbin
314 
##314 
###!
#ab5A_LL destroy
#ab5A_LR destroy
#ab5A_L destroy
#ab5A_R destroy
#ab5A_0 destroy
###!
###!
###!----------------------------------------------------------------------
###4.2 arbbin 5 versio B: ((1) 5 ((2) 4 (3)))
###!----------------------------------------------------------------------
###!
#init ab5B_L arbbin<int> 321
#init ab5B_RL arbbin<int> 322
#init ab5B_RR arbbin<int> 323
#init ab5B_R arbbin<int> 324 ab5B_RL ab5B_RR
#init ab5B_0 arbbin<int> 325 ab5B_L ab5B_R
###!
#ab5B_0 arrel
325
##325
#ab5B_0 size
5
##5
#ab5B_0 print_arbbin
321 322 323 324 325 
##321 322 323 324 325 
###!
#ab5B_L arrel
321
##321
#ab5B_L size
1
##1
#ab5B_L print_arbbin
321 
##321 
#ab5B_R arrel
324
##324
#ab5B_R size
3
##3
#ab5B_R print_arbbin
322 323 324 
##322 323 324 
###!
###!
#ab5B_RL arrel
322
##322
#ab5B_RL size
1
##1
#ab5B_RL print_arbbin
322 
##322 
###!
#ab5B_RR arrel
323
##323
#ab5B_RR size
1
##1
#ab5B_RR print_arbbin
323 
##323 
###!
#ab5B_L destroy
#ab5B_RL destroy
#ab5B_RR destroy
#ab5B_R destroy 
#ab5B_0 destroy
###!
###!
###!
###!----------------------------------------------------------------------
###5 arbbin amb set nodes
###!----------------------------------------------------------------------
###!
###!----------------------------------------------------------------------
###5.1 arbbin 7 versio A: ((((1) 3 (2)) 5 (4)) 7 (6))
###!----------------------------------------------------------------------
###!
#init ab7A_LLL arbbin<int> 411
#init ab7A_LLR arbbin<int> 412
#init ab7A_LL arbbin<int> 413 ab7A_LLL ab7A_LLR
#init ab7A_LR arbbin<int> 414
#init ab7A_L arbbin<int> 415 ab7A_LL ab7A_LR
#init ab7A_R arbbin<int> 416
#init ab7A_0 arbbin<int> 417 ab7A_L ab7A_R
###!
#ab7A_0 arrel
417
##417
#ab7A_0 size
7
##7
#ab7A_0 print_arbbin
411 412 413 414 415 416 417 
##411 412 413 414 415 416 417 
###!
#ab7A_L arrel
415
##415
#ab7A_L size
5
##5
#ab7A_L print_arbbin
411 412 413 414 415 
##411 412 413 414 415 
###!
#ab7A_LL arrel
413
##413
#ab7A_LL size
3
##3
#ab7A_LL print_arbbin
411 412 413 
##411 412 413 
###!
#ab7A_LLL arrel
411
##411
#ab7A_LLL size
1
##1
#ab7A_LLL print_arbbin
411 
##411 
###!
#ab7A_LLR arrel
412
##412
#ab7A_LLR size
1
##1
#ab7A_LLR print_arbbin
412 
##412 
###!
#ab7A_LR arrel 
414
##414
#ab7A_LR size
1
##1
#ab7A_LR print_arbbin
414 
##414 
###!
#ab7A_R arrel
416
##416
#ab7A_R size
1
##1
#ab7A_R print_arbbin
416 
##416 
###!
#ab7A_LLL destroy
#ab7A_LLR destroy
#ab7A_LL destroy
#ab7A_LR destroy
#ab7A_L destroy
#ab7A_R destroy
#ab7A_0 destroy
###!
###!
###!----------------------------------------------------------------------
###5.2 arbbin 7 versio B: (((1) 5 ((2) 4 (3))) 7 (6))
###!----------------------------------------------------------------------
###!
#init ab7B_LL arbbin<int> 421
#init ab7B_LRL arbbin<int> 422
#init ab7B_LRR arbbin<int> 423
#init ab7B_LR arbbin<int> 424 ab7B_LRL ab7B_LRR
#init ab7B_L arbbin<int> 425 ab7B_LL ab7B_LR
#init ab7B_R arbbin<int> 426
#init ab7B_0 arbbin<int> 427 ab7B_L ab7B_R
###!
#ab7B_0 arrel
427
##427
#ab7B_0 size
7
##7
#ab7B_0 print_arbbin
421 422 423 424 425 426 427 
##421 422 423 424 425 426 427 
###!
#ab7B_L arrel
425
##425
#ab7B_L size
5
##5
#ab7B_L print_arbbin
421 422 423 424 425 
##421 422 423 424 425 
###!
#ab7B_LL arrel
421
##421
#ab7B_LL size
1
##1
#ab7B_LL print_arbbin
421 
##421 
###!
#ab7B_LR arrel
424
##424
#ab7B_LR size
3
##3
#ab7B_LR print_arbbin
422 423 424 
##422 423 424 
###!
#ab7B_LRL arrel
422
##422
#ab7B_LRL size
1
##1
#ab7B_LRL print_arbbin
422 
##422 
###!
#ab7B_LRR arrel
423
##423
#ab7B_LRR size
1
##1
#ab7B_LRR print_arbbin
423 
##423 
###!
#ab7B_R arrel
426
##426
#ab7B_R size
1
##1
#ab7B_R print_arbbin
426 
##426 
###!
#ab7B_LL destroy
#ab7B_LRL destroy
#ab7B_LRR destroy
#ab7B_LR destroy
#ab7B_L destroy
#ab7B_R destroy
#ab7B_0 destroy
###!
###!
###!----------------------------------------------------------------------
###5.3 arbbin 7 versio C: (((1) 3 (2)) 7 ((4) 6 (5)))
###!----------------------------------------------------------------------
###!
#init ab7C_LL arbbin<int> 431
#init ab7C_LR arbbin<int> 432
#init ab7C_L arbbin<int> 433 ab7C_LL ab7C_LR
#init ab7C_RL arbbin<int> 434
#init ab7C_RR arbbin<int> 435
#init ab7C_R arbbin<int> 436 ab7C_RL ab7C_RR
#init ab7C_0 arbbin<int> 437 ab7C_L ab7C_R
###!
#ab7C_0 arrel
437
##437
#ab7C_0 size
7
##7
#ab7C_0 print_arbbin
431 432 433 434 435 436 437 
##431 432 433 434 435 436 437 
###!
#ab7C_L arrel
433
##433
#ab7C_L size
3
##3
#ab7C_L print_arbbin
431 432 433 
##431 432 433 
###!
#ab7C_LL arrel
431
##431
#ab7C_LL size
1
##1
#ab7C_LL print_arbbin
431 
##431 
###!
#ab7C_LR arrel
432
##432
#ab7C_LR size
1
##1
#ab7C_LR print_arbbin
432 
##432 
###!
#ab7C_R arrel
436
##436
#ab7C_R size
3
##3
#ab7C_R print_arbbin
434 435 436 
##434 435 436 
###!
#ab7C_RL arrel
434
##434
#ab7C_RL size
1
##1
#ab7C_RL print_arbbin
434 
##434 
###!
#ab7C_RR arrel
435
##435
#ab7C_RR size 
1
##1
#ab7C_RR print_arbbin
435 
##435 
###!
#ab7C_LL destroy 
#ab7C_LR destroy
#ab7C_L destroy
#ab7C_RL destroy
#ab7C_RR destroy
#ab7C_R destroy 
#ab7C_0 destroy
###!
###!
###!----------------------------------------------------------------------
###5.4 arbbin 7 versio D: ((1) 7 (((2) 4 (3)) 6 (5)))
###!----------------------------------------------------------------------
###!
#init ab7D_L arbbin<int> 441
#init ab7D_RLL arbbin<int> 442
#init ab7D_RLR arbbin<int> 443
#init ab7D_RL arbbin<int> 444 ab7D_RLL ab7D_RLR
#init ab7D_RR arbbin<int> 445
#init ab7D_R arbbin<int> 446 ab7D_RL ab7D_RR
#init ab7D_0 arbbin<int> 447 ab7D_L ab7D_R
###!
#ab7D_0 arrel
447
##447
#ab7D_0 size 
7
##7
#ab7D_0 print_arbbin
441 442 443 444 445 446 447 
##441 442 443 444 445 446 447 
###!
#ab7D_L arrel
441
##441
#ab7D_L size
1
##1
#ab7D_L print_arbbin
441 
##441 
###!
#ab7D_R arrel
446
##446
#ab7D_R size
5
##5
#ab7D_R print_arbbin
442 443 444 445 446 
##442 443 444 445 446 
###!
#ab7D_RL arrel
444
##444
#ab7D_RL size
3
##3
#ab7D_RL print_arbbin
442 443 444 
##442 443 444 
###!
#ab7D_RLL arrel
442
##442
#ab7D_RLL size
1
##1
#ab7D_RLL print_arbbin
442 
##442 
###!
#ab7D_RLR arrel
443
##443
#ab7D_RLR size
1
##1
#ab7D_RLR print_arbbin
443 
##443 
###!
#ab7D_RR arrel
445
##445
#ab7D_RR size
1
##1
#ab7D_RR print_arbbin
445 
##445 
###!
#ab7D_L destroy
#ab7D_RLL destroy
#ab7D_RLR destroy
#ab7D_RL destroy 
#ab7D_RR destroy 
#ab7D_R destroy
#ab7D_0 destroy
###!
###!
###!----------------------------------------------------------------------
###5.5 arbbin 7 versio E: ((1) 7 ((2) 6 ((3) 5 (4))))
###!----------------------------------------------------------------------
###!
#init ab7E_L arbbin<int> 451
#init ab7E_RL arbbin<int> 452
#init ab7E_RRL arbbin<int> 453
#init ab7E_RRR arbbin<int> 454
#init ab7E_RR arbbin<int> 455 ab7E_RRL ab7E_RRR
#init ab7E_R arbbin<int> 456 ab7E_RL ab7E_RR
#init ab7E_0 arbbin<int> 457 ab7E_L ab7E_R
###!
#ab7E_0 arrel
457
##457
#ab7E_0 size
7
##7
#ab7E_0 print_arbbin
451 452 453 454 455 456 457 
##451 452 453 454 455 456 457 
###!
#ab7E_L arrel
451
##451
#ab7E_L size
1
##1
#ab7E_L print_arbbin
451 
##451 
###!
#ab7E_R arrel
456
##456
#ab7E_R size
5
##5
#ab7E_R print_arbbin
452 453 454 455 456 
##452 453 454 455 456 
###!
#ab7E_RL arrel
452
##452
#ab7E_RL size
1
##1
#ab7E_RL print_arbbin
452 
##452 
###!
#ab7E_RR arrel
455
##455
#ab7E_RR size
3
##3
#ab7E_RR print_arbbin
453 454 455 
##453 454 455 
###!
#ab7E_RRL arrel
453
##453
#ab7E_RRL size
1
##1
#ab7E_RRL print_arbbin
453 
##453 
###!
#ab7E_RRR arrel
454
##454
#ab7E_RRR size
1
##1
#ab7E_RRR print_arbbin
454 
##454 
###!
#ab7E_L destroy
#ab7E_RL destroy
#ab7E_RRL destroy
#ab7E_RRR destroy
#ab7E_RR destroy
#ab7E_R destroy
#ab7E_0 destroy
###!
###!
###!
###!----------------------------------------------------------------------
###6 arbbin amb quintze nodes
###!----------------------------------------------------------------------
###!
###!----------------------------------------------------------------------
###6.1 arbbin 15 versio A: alineat pel fill esquerra
###!----------------------------------------------------------------------
###!
#init ab15A_LLLLLLL arbbin<int> 501
#init ab15A_LLLLLLR arbbin<int> 502
#init ab15A_LLLLLL arbbin<int> 503 ab15A_LLLLLLL ab15A_LLLLLLR
#init ab15A_LLLLLR arbbin<int> 504
#init ab15A_LLLLL arbbin<int> 505 ab15A_LLLLLL ab15A_LLLLLR
#init ab15A_LLLLR arbbin<int> 506
#init ab15A_LLLL arbbin<int> 507 ab15A_LLLLL ab15A_LLLLR
#init ab15A_LLLR arbbin<int> 508
#init ab15A_LLL arbbin<int> 509 ab15A_LLLL ab15A_LLLR
#init ab15A_LLR arbbin<int> 510
#init ab15A_LL arbbin<int> 511 ab15A_LLL ab15A_LLR
#init ab15A_LR arbbin<int> 512
#init ab15A_L arbbin<int> 513 ab15A_LL ab15A_LR
#init ab15A_R arbbin<int> 514
#init ab15A_0 arbbin<int> 515 ab15A_L ab15A_R
###!
#ab15A_0 arrel 
515
##515
#ab15A_0 size
15
##15
#ab15A_0 print_arbbin
501 502 503 504 505 506 507 508 509 510 511 512 513 514 515 
##501 502 503 504 505 506 507 508 509 510 511 512 513 514 515 
###!
#ab15A_LLLLLLL destroy
#ab15A_LLLLLLR destroy
#ab15A_LLLLLL destroy
#ab15A_LLLLLR destroy
#ab15A_LLLLL destroy
#ab15A_LLLLR destroy
#ab15A_LLLL destroy
#ab15A_LLLR destroy
#ab15A_LLL destroy
#ab15A_LLR destroy
#ab15A_LL destroy
#ab15A_LR destroy
#ab15A_L destroy
#ab15A_R destroy 
#ab15A_0 destroy
###!
###!
###!----------------------------------------------------------------------
###6.2 arbbin 15 versio B: balancejat
###!----------------------------------------------------------------------
###!
#init ab15B_L arbbin<int> 521
#init ab15B_RL arbbin<int> 522
#init ab15B_RRL arbbin<int> 523
#init ab15B_RRRL arbbin<int> 524
#init ab15B_RRRRL arbbin<int> 525
#init ab15B_RRRRRL arbbin<int> 526
#init ab15B_RRRRRRL arbbin<int> 527
#init ab15B_RRRRRRR arbbin<int> 528
#init ab15B_RRRRRR arbbin<int> 529 ab15B_RRRRRRL ab15B_RRRRRRR
#init ab15B_RRRRR arbbin<int> 530 ab15B_RRRRRL ab15B_RRRRRR
#init ab15B_RRRR arbbin<int> 531 ab15B_RRRRL ab15B_RRRRR
#init ab15B_RRR arbbin<int> 532 ab15B_RRRL ab15B_RRRR
#init ab15B_RR arbbin<int> 533 ab15B_RRL ab15B_RRR
#init ab15B_R arbbin<int> 534 ab15B_RL ab15B_RR
#init ab15B_0 arbbin<int> 535 ab15B_L ab15B_R
###!
#ab15B_0 arrel
535
##535
#ab15B_0 size
15
##15
#ab15B_0 print_arbbin
521 522 523 524 525 526 527 528 529 530 531 532 533 534 535 
##521 522 523 524 525 526 527 528 529 530 531 532 533 534 535 
###!
#ab15B_L destroy
#ab15B_RL destroy
#ab15B_RRL destroy
#ab15B_RRRL destroy
#ab15B_RRRRL destroy
#ab15B_RRRRRL destroy
#ab15B_RRRRRRL destroy 
#ab15B_RRRRRRR destroy 
#ab15B_RRRRRR destroy 
#ab15B_RRRRR destroy 
#ab15B_RRRR destroy 
#ab15B_RRR destroy 
#ab15B_RR destroy 
#ab15B_R destroy 
#ab15B_0 destroy
###!
###!
###!----------------------------------------------------------------------
###6.3 arbbin 15 versio C: alineat pel fill dreta
###!----------------------------------------------------------------------
###!
#init ab15C_LLL arbbin<int> 541
#init ab15C_LLR arbbin<int> 542
#init ab15C_LL arbbin<int> 543 ab15C_LLL ab15C_LLR
#init ab15C_LRL arbbin<int> 544
#init ab15C_LRR arbbin<int> 545
#init ab15C_LR arbbin<int> 546 ab15C_LRL ab15C_LRR
#init ab15C_L arbbin<int> 547 ab15C_LL ab15C_LR
#init ab15C_RLL arbbin<int> 548
#init ab15C_RLR arbbin<int> 549
#init ab15C_RL arbbin<int> 550 ab15C_RLL ab15C_RLR
#init ab15C_RRL arbbin<int> 551
#init ab15C_RRR arbbin<int> 552
#init ab15C_RR arbbin<int> 553 ab15C_RRL ab15C_RRR
#init ab15C_R arbbin<int> 554 ab15C_RL ab15C_RR
#init ab15C_0 arbbin<int> 555 ab15C_L ab15C_R
###!
#ab15C_0 arrel
555
##555
#ab15C_0 size
15
##15
#ab15C_0 print_arbbin 
541 542 543 544 545 546 547 548 549 550 551 552 553 554 555 
##541 542 543 544 545 546 547 548 549 550 551 552 553 554 555 
###!
#ab15C_LLL destroy
#ab15C_LLR destroy
#ab15C_LL destroy
#ab15C_LRL destroy
#ab15C_LRR destroy
#ab15C_LR destroy
#ab15C_L destroy
#ab15C_RLL destroy
#ab15C_RLR destroy
#ab15C_RL destroy
#ab15C_RRL destroy
#ab15C_RRR destroy
#ab15C_RR destroy 
#ab15C_R destroy
#ab15C_0 destroy
###!
###!
###!
###!----------------------------------------------------------------------
###7 construccio per copia
###!----------------------------------------------------------------------
###!
###!----------------------------------------------------------------------
###7.1 arbbin amb un node
###!----------------------------------------------------------------------
###!
#init ab1_A0 arbbin<int> 611
###!
#initcopy ab1_B0 = ab1_A0
#destroy ab1_A0
###!
#ab1_B0 arrel
611
##611
#ab1_B0 size
1
##1
#ab1_B0 print_arbbin
611 
##611 
#ab1_B0 destroy
###!
###!
###!----------------------------------------------------------------------
###7.2 arbbin amb tres nodes
###!----------------------------------------------------------------------
###!
#init ab3_AL arbbin<int> 621
#init ab3_AR arbbin<int> 622
#init ab3_A0 arbbin<int> 623 ab3_AL ab3_AR
###!
#initcopy ab3_B0 = ab3_A0
###!
#ab3_AL destroy
#ab3_AR destroy
#ab3_A0 destroy
###!
#ab3_B0 arrel
623
##623
#ab3_B0 size
3
##3
#ab3_B0 print_arbbin
621 622 623 
##621 622 623 
#ab3_B0 destroy
###!
###!
###!----------------------------------------------------------------------
###7.3 arbbin amb set nodes. versio B: (((1) 5 ((2) 4 (3))) 7 (6))
###!----------------------------------------------------------------------
###!
#init ab7B_ALL arbbin<int> 631
#init ab7B_ALRL arbbin<int> 632
#init ab7B_ALRR arbbin<int> 633
#init ab7B_ALR arbbin<int> 634 ab7B_ALRL ab7B_ALRR
#init ab7B_AL arbbin<int> 635 ab7B_ALL ab7B_ALR
#init ab7B_AR arbbin<int> 636
#init ab7B_A0 arbbin<int> 637 ab7B_AL ab7B_AR
###!
#initcopy ab7B_B0 = ab7B_A0
###!
#ab7B_ALL destroy
#ab7B_ALRL destroy
#ab7B_ALRR destroy
#ab7B_ALR destroy
#ab7B_AL destroy
#ab7B_AR destroy 
#ab7B_A0 destroy
###!
#ab7B_B0 arrel
637
##637
#ab7B_B0 size
7
##7
#ab7B_B0 print_arbbin
631 632 633 634 635 636 637 
##631 632 633 634 635 636 637 
###!
###!
###!
###!----------------------------------------------------------------------
###8 destruccio parcial
###! arbbin amb cinc nodes
###!----------------------------------------------------------------------
###!
###!----------------------------------------------------------------------
###8.1 destruccio desde las fullas fins a la arrel
###!----------------------------------------------------------------------
###!
#init ab5A_DLL arbbin<int> 711
#init ab5A_DLR arbbin<int> 712
#init ab5A_DL arbbin<int> 713 ab5A_DLL ab5A_DLR
#init ab5A_DR arbbin<int> 714
#init ab5A_D0 arbbin<int> 715 ab5A_DL ab5A_DR
###!
#ab5A_DLL destroy
###!
#ab5A_D0 arrel
715
##715
#ab5A_D0 size
5
##5
#ab5A_D0 print_arbbin
711 712 713 714 715 
##711 712 713 714 715 
###!
#ab5A_DL arrel
713
##713
#ab5A_DL size
3
##3
#ab5A_DL print_arbbin
711 712 713 
##711 712 713 
###!
#ab5A_DLR arrel
712
##712
#ab5A_DLR size
1
##1
#ab5A_DLR print_arbbin
712 
##712 
###!
#ab5A_DR arrel
714
##714
#ab5A_DR size
1
##1
#ab5A_DR print_arbbin
714 
##714 
###!
#ab5A_DLR destroy
###!
#ab5A_D0 arrel
715
##715
#ab5A_D0 size
5
##5
#ab5A_D0 print_arbbin
711 712 713 714 715 
##711 712 713 714 715 
###!
#ab5A_DL arrel
713
##713
#ab5A_DL size
3
##3
#ab5A_DL print_arbbin
711 712 713 
##711 712 713 
###!
#ab5A_DR arrel
714
##714
#ab5A_DR size
1
##1
#ab5A_DR print_arbbin
714 
##714 
###!
#ab5A_DL destroy
###!
#ab5A_D0 arrel
715
##715
#ab5A_D0 size
5
##5
#ab5A_D0 print_arbbin
711 712 713 714 715 
##711 712 713 714 715 
###!
#ab5A_DR arrel
714
##714
#ab5A_DR size
1
##1
#ab5A_DR print_arbbin
714 
##714 
###!
#ab5A_DR destroy
###!
#ab5A_D0 arrel
715
##715
#ab5A_D0 size
5
##5
#ab5A_D0 print_arbbin
711 712 713 714 715 
##711 712 713 714 715 
###!
#ab5A_D0 destroy
###!
###!
###!----------------------------------------------------------------------
###8.2 destruccio des de l'arrel a les fulles
###!----------------------------------------------------------------------
###!
#init ab5A_ELL arbbin<int> 721
#init ab5A_ELR arbbin<int> 722
#init ab5A_EL arbbin<int> 723 ab5A_ELL ab5A_ELR
#init ab5A_ER arbbin<int> 724
#init ab5A_E0 arbbin<int> 725 ab5A_EL ab5A_ER
###!
#ab5A_E0 destroy
###!
#ab5A_EL arrel
723
##723
#ab5A_EL size
3
##3
#ab5A_EL print_arbbin
721 722 723 
##721 722 723 
###!
#ab5A_ELL arrel
721
##721
#ab5A_ELL size
1
##1
#ab5A_ELL print_arbbin
721 
##721 
###!
#ab5A_ELR arrel
722
##722
#ab5A_ELR size
1
##1
#ab5A_ELR print_arbbin
722 
##722 
###!
#ab5A_ER arrel
724
##724
#ab5A_ER size
1
##1
#ab5A_ER print_arbbin
724 
##724 
###!
#ab5A_ER destroy
###!
#ab5A_EL arrel
723
##723
#ab5A_EL size
3
##3
#ab5A_EL print_arbbin
721 722 723 
##721 722 723 
###!
#ab5A_ELL arrel
721
##721
#ab5A_ELL size
1
##1
#ab5A_ELL print_arbbin
721 
##721 
###!
#ab5A_ELR arrel
722
##722
#ab5A_ELR size
1
##1
#ab5A_ELR print_arbbin
722 
##722 
###!
#ab5A_EL destroy
###!
#ab5A_ELL arrel
721
##721
#ab5A_ELL size
1
##1
#ab5A_ELL print_arbbin
721 
##721 
###!
#ab5A_ELR arrel
722
##722
#ab5A_ELR size
1
##1
#ab5A_ELR print_arbbin
722 
##722 
###!
#ab5A_ELR destroy
###!
#ab5A_ELL arrel
721
##721
#ab5A_ELL size
1
##1
#ab5A_ELL print_arbbin
721 
##721 
###!
#ab5A_ELL destroy
###!
###!
###!
###!----------------------------------------------------------------------
###9 assignacio
###!----------------------------------------------------------------------
###!
###!----------------------------------------------------------------------
###9.1 arbbin amb un node
###!----------------------------------------------------------------------
###!
#init ab1_F0 arbbin<int> 811
###!
#ab1_F0 = ab1_F0
###!
#ab1_F0 arrel
811
##811
#ab1_F0 size
1
##1
#ab1_F0 print_arbbin
811 
##811 
###!
#init ab1_GL arbbin<int> 801
#init ab1_GR arbbin<int> 802
#init ab1_G0 arbbin<int> 803 ab1_GL ab1_GR
###!
#ab1_G0 = ab1_F0
###!
#ab1_F0 destroy 
###!
#ab1_G0 arrel
811
##811
#ab1_G0 size
1
##1
#ab1_G0 print_arbbin
811 
##811 
###!
#ab1_GL arrel
801
##801
#ab1_GL size
1
##1
#ab1_GL print_arbbin
801 
##801 
###!
#ab1_GR arrel
802
##802
#ab1_GR size
1
##1
#ab1_GR print_arbbin
802 
##802 
###!
#ab1_G0 destroy
#ab1_GL destroy
#ab1_GR destroy
###!
###!
###!----------------------------------------------------------------------
###9.2 arbbin amb tres nodes
###!----------------------------------------------------------------------
###!
#init ab3_FL arbbin<int> 821
#init ab3_FR arbbin<int> 822
#init ab3_F0 arbbin<int> 823 ab3_FL ab3_FR
###!
#ab3_F0 = ab3_F0
###!
#ab3_F0 arrel
823
##823
#ab3_F0 size
3
##3
#ab3_F0 print_arbbin
821 822 823 
##821 822 823 
###!
#init ab3_GL arbbin<int> 801
#init ab3_GR arbbin<int> 802
#init ab3_G0 arbbin<int> 803 ab3_GL ab3_GR
###!
#ab3_G0 = ab3_F0
###!
#ab3_FL destroy
#ab3_FR destroy
#ab3_F0 destroy
###!
#ab3_G0 arrel
823
##823
#ab3_G0 size
3
##3
#ab3_G0 print_arbbin
821 822 823 
##821 822 823 
###!
#ab3_GL arrel
801
##801
#ab3_GL size
1
##1
#ab3_GL print_arbbin
801 
##801 
###!
#ab3_GR arrel
802
##802
#ab3_GR size
1
##1
#ab3_GR print_arbbin
802 
##802 
###!
#ab3_G0 destroy
#ab3_GL destroy
#ab3_GR destroy
###!
###!
###!----------------------------------------------------------------------
###9.3 arbbin amb set nodes. versio B: (((1) 5 ((2) 4 (3))) 7 (6))
###!----------------------------------------------------------------------
###!
#init ab7B_FLL arbbin<int> 831
#init ab7B_FLRL arbbin<int> 832
#init ab7B_FLRR arbbin<int> 833
#init ab7B_FLR arbbin<int> 834 ab7B_FLRL ab7B_FLRR
#init ab7B_FL arbbin<int> 835 ab7B_FLL ab7B_FLR
#init ab7B_FR arbbin<int> 836
#init ab7B_F0 arbbin<int> 837 ab7B_FL ab7B_FR
###!
#ab7B_F0 = ab7B_F0
###!
#ab7B_F0 arrel
837
##837
#ab7B_F0 size
7
##7
#ab7B_F0 print_arbbin
831 832 833 834 835 836 837 
##831 832 833 834 835 836 837 
###!
#init ab7B_GL arbbin<int> 801
#init ab7B_GR arbbin<int> 802
#init ab7B_G0 arbbin<int> 803 ab7B_GL ab7B_GR
###!
#ab7B_G0 = ab7B_F0
###!
#ab7B_FLL destroy
#ab7B_FLRL destroy
#ab7B_FLRR destroy
#ab7B_FLR destroy
#ab7B_FL destroy
#ab7B_FR destroy 
#ab7B_F0 destroy
###!
#ab7B_G0 arrel
837
##837
#ab7B_G0 size
7
##7
#ab7B_G0 print_arbbin
831 832 833 834 835 836 837 
##831 832 833 834 835 836 837 
###!
#ab7B_GL arrel
801
##801
#ab7B_GL size
1
##1
#ab7B_GL print_arbbin
801 
##801 
###!
#ab7B_GR arrel
802
##802
#ab7B_GR size
1
##1
#ab7B_GR print_arbbin
802 
##802 
###!
#ab7B_G0 destroy
#ab7B_GL destroy
#ab7B_GR destroy
###!
###!
###!
###!----------------------------------------------------------------------
###10 assignacio amb segon us
###! arbbin amb cinc nodes
###!----------------------------------------------------------------------
###!
#init ab5A_H0 arbbin<int> 311
#init ab5A_HLR arbbin<int> 312
#init ab5A_HL arbbin<int> 313 ab5A_H0 ab5A_HLR
#init ab5A_HR arbbin<int> 314
#ab5A_H0 destroy
#init ab5A_H0 arbbin<int> 315 ab5A_HL ab5A_HR
###!
#ab5A_H0 arrel
315
##315
#ab5A_H0 size
5
##5
#ab5A_H0 print_arbbin
311 312 313 314 315 
##311 312 313 314 315 
###!
#ab5A_HL arrel
313
##313
#ab5A_HL size
3
##3
#ab5A_HL print_arbbin
311 312 313 
##311 312 313 
###!
#ab5A_HLR arrel
312
##312
#ab5A_HLR size
1
##1
#ab5A_HLR print_arbbin
312 
##312 
###!
#ab5A_HR arrel
314
##314
#ab5A_HR size
1
##1
#ab5A_HR print_arbbin
314 
##314 
###!
#ab5A_HLR destroy
#ab5A_HL destroy
#ab5A_HR destroy
#ab5A_H0 destroy
###!
###!
###!
###!----------------------------------------------------------------------
###11 iterador d'arbbin
###!----------------------------------------------------------------------
###!
###!----------------------------------------------------------------------
###11.1 iterador sobre arbbin buit
###!----------------------------------------------------------------------
###!
#init it1 arbbin<int>::iterador
###!
#it1 bool
false
##false
#it1 consult_iterador
Error::arbbin::iterador:11:Iterador nul
##Error::arbbin::iterador:11:Iterador nul
#it1 fill_esq
Error::arbbin::iterador:11:Iterador nul
##Error::arbbin::iterador:11:Iterador nul
#it1 fill_dret
Error::arbbin::iterador:11:Iterador nul
##Error::arbbin::iterador:11:Iterador nul
###!
#it1 destroy
###!
###!
###!----------------------------------------------------------------------
###11.2 constructor per copia d'iterador d'arbbin
###!----------------------------------------------------------------------
###!
#init it21 arbbin<int>::iterador
###!
#initcopy it22 = it21
#it21 destroy
###!
###!
#it22 bool
false
##false
#it22 consult_iterador
Error::arbbin::iterador:11:Iterador nul
##Error::arbbin::iterador:11:Iterador nul
#it22 fill_esq
Error::arbbin::iterador:11:Iterador nul
##Error::arbbin::iterador:11:Iterador nul
#it22 fill_dret
Error::arbbin::iterador:11:Iterador nul
##Error::arbbin::iterador:11:Iterador nul
###!
#it22 destroy
###!
###!
###!----------------------------------------------------------------------
###11.3 assignacio d'iterador d'arbbin
###!----------------------------------------------------------------------
###!
#init it31 arbbin<int>::iterador
###!
#init it32 arbbin<int>::iterador
###!
#it32 = it31
#it31 destroy 
###!
###!
#it32 bool
false
##false
#it32 consult_iterador
Error::arbbin::iterador:11:Iterador nul
##Error::arbbin::iterador:11:Iterador nul
#it32 fill_esq
Error::arbbin::iterador:11:Iterador nul
##Error::arbbin::iterador:11:Iterador nul
#it32 fill_dret
Error::arbbin::iterador:11:Iterador nul
##Error::arbbin::iterador:11:Iterador nul
###!
#it32 destroy
###!
###!
[20/0]
