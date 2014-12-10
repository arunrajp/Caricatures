<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePageSlides.aspx.cs" Inherits="HomePageSlides" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/reveal.css" rel="stylesheet" />
    <link href="assets/css/sky.css" rel="stylesheet" />
</head>
<body>
    <div class="reveal">
        <div class="slides">
            <section>
               <h1>Slide 1</h1>
            </section>
            <section>
                <h1>Slide 2</h1>
            </section>
            <section>
                <h1>Slide 3</h1>
            </section>
            <section>
                <h1>Slide 4</h1>
            </section>
        </div>
    </div>
    <script src="assets/js/reveal.js"></script>
    <script type="text/javascript">
        Reveal.initialize({
            controls: true,
            progress: true,
            slideNumber: false,
            history: false,
            keyboard: true,
            overview: true,
            center: true,
            touch: true,
            loop: true,
            rtl: false,
            fragments: true,
            embedded: true,
            autoSlide: 3000,
            autoSlideStoppable: true,
            mouseWheel: false,
            hideAddressBar: true,
            previewLinks: false,
            transition: 'default', // default/cube/page/concave/zoom/linear/fade/none
            transitionSpeed: 'slow', // default/fast/slow
            backgroundTransition: 'default', // default/none/slide/concave/convex/zoom
            viewDistance: 3
        });
    </script>
</body>
</html>
