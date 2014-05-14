<#include "header.ftl">
<#include "menu.ftl">

<div>

	<img src="${config.site_context}img/logo-600x144.png"/>

    <p>
        Functional Java is an open source library that seeks to improve the experience of using the Java programming
        language in a production environment. The library implements several advanced programming concepts that assist
        in achieving composition-oriented development. Functional Java is written using vanilla Java 1.5 syntax and
        requires no external supporting libraries. The JAR file will work with your Java 1.5 project without any
        additional effort.
    </p>
    <p>
        Functional Java also serves as a platform for learning functional
        programming concepts by introducing these concepts using a familiar language. The library is
        intended for use in production applications and is thoroughly tested using the technique of
        automated specification-based testing with
        <a href="http://code.google.com/p/scalacheck/">ScalaCheck</a>.
    </p>

    <p>
        Functional Java includes the following features:
    </p>
    <ul>
        <li>
            Fully operational Actors for parallel computations (<code>fj.control.parallel</code>) and layered abstractions
            such as parallel-map, map-reduce, parallel-zip.
        </li>
        <li>
            A package (<code>fj.data.fingertrees</code>) providing 2-3 finger trees for a functional representation of
            persistent sequences supporting access to the ends in amortized O(1) time.
        </li>
        <li>
            Type-safe heterogeneous list (<code>fj.data.hlist</code>) for lists of elements of differing types without
            sacrificing type-safety.
        </li>
        <li>
            Monadic parser combinators for writing parsers by combining smaller parsers using composition.
        </li>
        <li>
            Conversion of data types to/from standard Java types.
        </li>
        <li>
            Immutable, in-memory singly linked list (<code>fj.data.List</code>).
        </li>
        <li>
            Immutable lazy singly linked list (<code>fj.data.Stream</code>).
        </li>
        <li>
            Array wrapper (<code>fj.data.Array</code>).
        </li>
        <li>
            Optional value &mdash; <em>type-safe null</em> (<code>fj.data.Option</code>).
        </li>
        <li>
            Disjoint union data type &mdash; <em>compositional exception handling</em> (<code>fj.data.Either</code>).
        </li>
        <li>
            Monoid (<code>fj.Monoid</code>).
        </li>
        <li>
            Functions with arity 1 to 8.
        </li>
        <li>
            Products of 1 to 8.
        </li>
        <li>
            Configurable equality and hash-code for HashMap and HashSet.
        </li>
        <li>
            Natural number data type (<code>fj.data.Natural</code>).
        </li>
        <li>
            Immutable set implementation using a red/black tree.
        </li>
        <li>
            Immutable multi-way tree &mdash; aka rose tree (<code>fj.data.Tree</code>).
        </li>
        <li>
            Immutable tree-map using a red/black tree implementation (<code>fj.data.TreeMap</code>).
        </li>
        <li>
            Zipper implementations for streams and trees.
        </li>
        <li>
            Automated specification-based testing framework (<code>fj.test</code>).
        </li>
    </ul>
    <p>
        Functional Java includes usage examples and notably, code examples that make use of the
        <a href="http://javac.info/">Java 7 BGGA proposal syntax</a>. Here is one such example
        (import statements omitted) that maps a transformation across an array by adding 42 to
        each element.
    </p>
	
	
	<pre>
		<code class="java">
		final Array&lt;Integer&gt; a = array(1, 2, 3);
		final Array&lt;Integer&gt; b = a.map({int i =&gt; i + 42});
		arrayShow(intShow).println(b); // {43,44,45}
		</code>
	</pre>
	
</div>


<#include "footer.ftl">
