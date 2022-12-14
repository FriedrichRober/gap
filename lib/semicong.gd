#############################################################################
##
##  This file is part of GAP, a system for computational discrete algebra.
##  This file's authors include Andrew Solomon.
##
##  Copyright of GAP belongs to its developers, whose names are too numerous
##  to list here. Please refer to the COPYRIGHT file for details.
##
##  SPDX-License-Identifier: GPL-2.0-or-later
##
##  This file contains the declaration for semigroup congruences.
##
##  Maintenance and further development by:
##  Robert F. Morse
##  Andrew Solomon
##

###########################################################################
##
#O  SemigroupCongruenceByGeneratingPairs(<s>,<list>)
##
##  create a semigroup congruence on <s> generated by the list
##  <list> of pairs.
##
DeclareOperation("SemigroupCongruenceByGeneratingPairs",
    [IsMagma and IsAssociative, IsList]);

#############################################################################
##
#O  RightSemigroupCongruenceByGeneratingPairs(<D>, <pairs> )
##
##  The right congruence on <D> generated by <pairs>
##
DeclareOperation( "RightSemigroupCongruenceByGeneratingPairs",
    [IsMagma and IsAssociative, IsList ] );

#############################################################################
##
#O  LeftSemigroupCongruenceByGeneratingPairs(<D>, <pairs> )
##
##  The left congruence generated by pairs
##
DeclareOperation( "LeftSemigroupCongruenceByGeneratingPairs",
    [IsMagma and IsAssociative, IsList ] );

#############################################################################
##
#M  JoinSemigroupCongruences(<cong1>, <cong2>)
##
##  Join of two semigroup congruences
##
DeclareSynonym("JoinSemigroupCongruences", JoinMagmaCongruences);

#############################################################################
##
#M  MeetSemigroupCongruences(<cong1>, <cong2>)
##
##  Join of two semigroup congruences
##
DeclareSynonym("MeetSemigroupCongruences", MeetMagmaCongruences);

#############################################################################
##
#A  GeneratingPairsOfSemigroupCongruence(<cong1>, <cong2>)
##
##  <ManSection>
##  <Attr Name="GeneratingPairsOfSemigroupCongruence" Arg='cong1, cong2'/>
##
##  <Description>
##  Generating Pairs of a semigroup congruences
##  </Description>
##  </ManSection>
##
DeclareSynonym("GeneratingPairsOfSemigroupCongruence",
                    GeneratingPairsOfMagmaCongruence);

###########################################################################
##
#P  IsLeftSemigroupCongruence(<c>)
##
##  <ManSection>
##  <Prop Name="IsLeftSemigroupCongruence" Arg='c'/>
##
##  <Description>
##  a left magma congruence <A>c</A> on a semigroup.
##  </Description>
##  </ManSection>
##
DeclareProperty("IsLeftSemigroupCongruence", IsLeftMagmaCongruence);

###########################################################################
##
#P  IsRightSemigroupCongruence(<c>)
##
##  <ManSection>
##  <Prop Name="IsRightSemigroupCongruence" Arg='c'/>
##
##  <Description>
##  a right magma congruence <A>c</A> on a semigroup.
##  </Description>
##  </ManSection>
##
DeclareProperty("IsRightSemigroupCongruence", IsRightMagmaCongruence);

###########################################################################
##
#P  IsSemigroupCongruence(<c>)
##
##  <#GAPDoc Label="IsSemigroupCongruence">
##  <ManSection>
##  <Prop Name="IsSemigroupCongruence" Arg='c'/>
##
##  <Description>
##  a magma congruence <A>c</A> on a semigroup.
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareProperty("IsSemigroupCongruence", IsMagmaCongruence);
InstallTrueMethod(IsLeftSemigroupCongruence,IsSemigroupCongruence);
InstallTrueMethod(IsRightSemigroupCongruence,IsSemigroupCongruence);

###########################################################################
##
#P  IsReesCongruence(<c>)
##
##  <#GAPDoc Label="IsReesCongruence">
##  <ManSection>
##  <Prop Name="IsReesCongruence" Arg='c'/>
##
##  <Description>
##  returns <K>true</K> if and only if the congruence <A>c</A> has at most
##  one nonsingleton congruence class.
##  </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareProperty("IsReesCongruence", IsSemigroupCongruence );
