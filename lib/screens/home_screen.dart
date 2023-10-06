import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tex/flutter_tex.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  var q1list = [
    r'1.2 A',
    r'0.6 A',
    r'0.2 A',
    r'2.0 A',
  ];

  var lens = [
    r'Concave lens',
    r'Rectangular glass slab',
    r'Prism',
    r'Convex lens',
  ];

  var options = [
    r'\( a \)',
    r'\( b \)',
    r'\( c \)',
    r'\( d \)',
  ];

  var resistance = [
    r' \( R1 = R2 = R3 \)',
    r' \( R1 > R2 > R3 \)',
    r' \( R1 < R2 < R3 \)',
    r' \( R1 = R2 < R3 \)',
  ];

  var quadratic = [
    r'$$ x^2 - 7x + 10 $$',
    r'$$ x^2 - 4x - 5 $$',
    r'$$ x^2 + 7x + 10 $$',
    r'$$ x^2 - 4x + 5 $$',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Latex'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TeXView(
          child: TeXViewColumn(
            children: [
              const TeXViewDocument(r'Calculate the current flows through the \( \textbf{ 10 \( \Omega \) } \) resistor in the following circuit:'),
              for (var i = 0; i < q1list.length; i++)
                TeXViewInkWell(
                  style: const TeXViewStyle.fromCSS('padding: 5px; border: none;'),
                  id: 'id_0',
                  child: TeXViewDocument(r'\( ' + q1list[i] + r' \)'),
                ),
              const TeXViewDocument(r'\( \textbf{Methyl orange} \) is an indicator'),
              const TeXViewDocument(
                r"Newton's second law deals with the inertia of an object",
                style: TeXViewStyle.fromCSS('margin-bottom: 20px;'),
              ),
              const TeXViewDocument(r'Prove that: $$\sqrt{ \frac{ \sec(P+1) }{ \sec(P-1) } } = \cosec P + cot P $$'),
              const TeXViewDocument(
                r'\( \textbf{Plasmolysis} \) in a plant cell is defined as breakdown (lysis) of plasma membrane in hypotonic medium',
                style: TeXViewStyle.fromCSS('margin-bottom: 10px; margin-top: 10px'),
              ),
              const TeXViewDocument(
                r'Under the Unitary system, either there is only one level of government or the sub-units are subordinate to the central government.',
                style: TeXViewStyle.fromCSS('margin-bottom: 10px; margin-top: 10px'),
              ),
              const TeXViewDocument(
                r'<p>Three friends Om, Jay and Jagdish are going around a circular ground. Om takes \( \textit{12 minutes} \) to complete one round of the ground, while Jay takes \( \textit{18 minutes} \) and Jagdish takes \( \textit{25 minutes} \) for the same. If they all start at the same point and at the same time and go in the same direction, after what time will they meet again at the starting point.</p>',
                style: TeXViewStyle.fromCSS('margin-bottom: 10px; margin-top: 10px'),
              ),
              const TeXViewDocument(
                r'If the distance between the points \( (3,4) \) and \( (a,0) \) is \(4\), then the value of \(a\) is \(2\)',
                style: TeXViewStyle.fromCSS('margin-bottom: 10px; margin-top: 10px'),
              ),
              const TeXViewDocument(r'Prove that: $$\sqrt{ \frac{ \sec(P+1) }{ \sec(P-1) } } = \cosec P + cot P $$'),
              const TeXViewDocument(r'A beam of light is incident through the holes on side A and emerges out of the hole on the other face of the box as shown in the figure. Which of the following could be inside the box?'),
              for ( var i = 0; i < lens.length; i++)
                TeXViewInkWell(
                  style: const TeXViewStyle.fromCSS('padding: 5px; border: none;'),
                  id: 'id_0',
                  child: TeXViewDocument(r'(' + options[i] + r') ' + lens[i]),
                ),
              for ( var i = 0; i < options.length; i++)
                TeXViewInkWell(
                  style: const TeXViewStyle.fromCSS('padding: 5px; border: none;'),
                  id: 'id_0',
                  child: TeXViewDocument(options[i])
                ),
              const TeXViewDocument(
                r'Objects fall at the same rate because they are affected by the same gravitational force.',
                style: TeXViewStyle.fromCSS('margin-bottom: 10px; margin-top: 10px'),  
              ),
              const TeXViewDocument(
                r'The physicist Neils Bohr proposed a model for the atom in which the electrons orbit the nucleus in fixed orbits',
                style: TeXViewStyle.fromCSS('margin-bottom: 10px; margin-top: 10px'),  
              ),
              const TeXViewDocument(r'A student carries out an experiment and plots the \( \textit{V-I} \) graph of three samples of nichrome wire with resistances \( R_1 \) \( R_2 \) and \( R_3 \) respectively. Which of the following is hue?'),
              for ( var i = 0; i < resistance.length; i++)
                TeXViewInkWell(
                  style: const TeXViewStyle.fromCSS('padding: 5px; border: none;'),
                  id: 'id_0',
                  child: TeXViewDocument(r'(' + options[i] + r') ' + resistance[i]),
                ),
              const TeXViewDocument(
                r'<p>\( \textbf{Ammonia}\) is found in many household products, such as window cleaners. It turns \( \underline{red} \) litmus \( \underline{blue} \). What is its nature?</p>',
                style: TeXViewStyle.fromCSS('margin-bottom: 10px; margin-top: 10px'),  
              ),
              // inline latex math experession
              const TeXViewDocument(r'If \( \alpha \) and \( \beta \) are the zeroes of the quadratic polynomial: $$ f(x) = x^2 - x - 2 $$ then the polynomial whose zeroes are \( \alpha + 1 \)  and \( \beta + 1 \) is:'),
              for ( var i = 0; i < quadratic.length; i++)
                TeXViewInkWell(
                  id: 'id_0',
                  child: TeXViewDocument(quadratic[i]),
                ),
              const TeXViewDocument(r"\( Q. 16 \) Multiple Choice"),
              for ( var i = 0; i < options.length; i++)
                const TeXViewInkWell(
                  style: TeXViewStyle.fromCSS('padding: 5px; border: none;'),
                  id: 'id_0',
                  child: TeXViewDocument("null")
                ),
              const TeXViewDocument(r"\( Q. 17 \) Multiple Choice"),
              for ( var i = 0; i < options.length; i++)
                const TeXViewInkWell(
                  style: TeXViewStyle.fromCSS('padding: 5px; border: none;'),
                  id: 'id_0',
                  child: TeXViewDocument("null")
                ),
            ],
          ),
        ),
      ),
    );
  }
}