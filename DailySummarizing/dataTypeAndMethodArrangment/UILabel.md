UILabel
=======


Ⅲ.Symbols

1.Accessing the Text Attributes(텍스트 속성에 액세스하기)

1)text

The text displayed by the label.

2)attributedText

The styled text displayed by the label.

3)font

The font of the text.

4)textColor

The color of the text.

5)textAlignment

The technique to use for aligning the text.


6)lineBreakMode

The technique to use for wrapping and truncating the label’s text.

7)enabled

The enabled state to use when drawing the label’s text.


##2.Sizing the Label’s Text(레이블 텍스트 크기 조정)

####1)adjustsFontSizeToFitWidth

A Boolean value indicating whether the font size should be reduced in order to fit the title string into the label’s bounding rectangle.

####2)allowsDefaultTighteningForTruncation

A Boolean value indicating whether the label tightens text before truncating.

3)baselineAdjustment

Controls how text baselines are adjusted when text needs to shrink to fit in the label.

4)minimumScaleFactor

The minimum scale factor supported for the label’s text.

5)numberOfLines

The maximum number of lines to use for rendering text.

6)<del>adjustsLetterSpacingToFitWidth(Deprecated)

A Boolean value indicating whether spacing between letters should be adjusted to fit the string within the label’s bounds rectangle.

7)<del>minimumFontSize(Deprecated)

The size of the smallest permissible font with which to draw the label’s text.


3.Managing Highlight Values(하이라이트 값 관리하기)

1)highlightedTextColor

The highlight color applied to the label’s text.

2)highlighted

A Boolean value indicating whether the receiver should be drawn with a highlight.

4.Drawing a Shadow

1)shadowColor

The shadow color of the text.

2)shadowOffset

The shadow offset (measured in points) for the text.

5.Drawing and Positioning Overrides

1)   - textRectForBounds:limitedToNumberOfLines:

Returns the drawing rectangle for the label’s text.

2)   - drawTextInRect:

Draws the receiver’s text (or its shadow) in the specified rectangle.

6.Getting the Layout Constraints(레이아웃 제약 조건 얻기)

preferredMaxLayoutWidth

The preferred maximum width (in points) for a multiline label.

7.Setting and Getting Attributes

1)userInteractionEnabled

A Boolean value that determines whether user events are ignored and removed from the event queue.

2)   - clipsToBounds
A Boolean value that determines whether subviews are confined to the bounds of the view.