UIView
======

Ⅰ.개요
-

Ⅱ.Properties
-

1.frame

2.bounds

3.center

4.transform

5.alpha

6.backgroundColor

Ⅲ.Symbols
-

##1.Initializing a View Object(뷰 객체 초기화)

####1) - initWithFrame:

```objc
- (instancetype)initWithFrame:(CGRect)frame;
```
* 지정된 사각형 프레임을 사용하여 새로 할당된 뷰 객체를 초기화 및 반환함.

##2.Configuring a View’s Visual Appearance(뷰의 시각적 외형 구성 설정)

####1)backgroundColor

```objc
@property(nonatomic, copy) UIColor *backgroundColor;
```
* 뷰의 백그라운드 색 설정
* 배경색의 기본값 nil(기본값)

####2)hidden

```objc
@property(nonatomic, getter=isHidden) BOOL hidden;
```
* 뷰가 숨겨 졌는지 여부를 결정(BOOL 값)
* YES 값일 경우 숨겨지고, NO 값일 경우 보이는것.
* 기본값은 NO 값이다.

####3)alpha

```objc
@property(nonatomic) CGFloat alpha;
```
* 뷰의 색깔이 투명해짐.
* 이 property의 값은, 0.0 ~ 1.0의 범위의 부동 소수점 수치임.
* 0.0은 완전 투명, 1.0은 완전 불투명.

####4)opaque

A Boolean value that determines whether the view is opaque.

####5)tintColor

The first nondefault tint color value in the view’s hierarchy, ascending from and starting with the view itself.

####6)tintAdjustmentMode

The first non-default tint adjustment mode value in the view’s hierarchy, ascending from and starting with the view itself.

####7)clipsToBounds

A Boolean value that determines whether subviews are confined to the bounds of the view.

####8)clearsContextBeforeDrawing

A Boolean value that determines whether the view’s bounds should be automatically cleared before drawing.

####9)maskView

An optional view whose alpha channel is used to mask a view’s content.

####10)   (class) layerClass

The class used to create the layer for instances of this class.

####11)layer

The view’s Core Animation layer used for rendering.

##3.Configuring the Event-Related Behavior

####1)userInteractionEnabled

A Boolean value that determines whether user events are ignored and removed from the event queue.

####2)multipleTouchEnabled

A Boolean value that indicates whether the receiver handles multi-touch events.

####3)exclusiveTouch
A Boolean value that indicates whether the receiver handles touch events exclusively.

##4.Configuring the Bounds and Frame Rectangles

####1)frame

The frame rectangle, which describes the view’s location and size in its superview’s coordinate system.

####2)bounds

The bounds rectangle, which describes the view’s location and size in its own coordinate system.

####3)center

The center of the frame.

####4)transform

Specifies the transform applied to the receiver, relative to the center of its bounds.


##5.Managing the View Hierarchy

####1)superview

The receiver’s superview, or nil if it has none.

####2)subviews

The receiver’s immediate subviews.

####3)window

The receiver’s window object, or nil if it has none.

   `-` addSubview:
Adds a view to the end of the receiver’s list of subviews.

   `-` bringSubviewToFront:
Moves the specified subview so that it appears on top of its siblings.

   `-` sendSubviewToBack:
Moves the specified subview so that it appears behind its siblings.

   `-` removeFromSuperview
Unlinks the view from its superview and its window, and removes it from the responder chain.

   `-` insertSubview:atIndex:
Inserts a subview at the specified index.

   `-` insertSubview:aboveSubview:
Inserts a view above another view in the view hierarchy.

   `-` insertSubview:belowSubview:
Inserts a view below another view in the view hierarchy.

   `-` exchangeSubviewAtIndex:withSubviewAtIndex:
Exchanges the subviews at the specified indices.

   `-` isDescendantOfView:
Returns a Boolean value indicating whether the receiver is a subview of a given view or identical to that view.

##6.Configuring the Resizing Behavior

####1)autoresizingMask

An integer bit mask that determines how the receiver resizes itself when its superview’s bounds change.

####2)autoresizesSubviews

A Boolean value that determines whether the receiver automatically resizes its subviews when its bounds change.

####3)contentMode

A flag used to determine how a view lays out its content when its bounds change.

####4) <del>contentStretch(Deprecated)

The rectangle that defines the stretchable and nonstretchable regions of a view.


   `-` sizeThatFits:
Asks the view to calculate and return the size that best fits the specified size.
   
   `-` sizeToFit
Resizes and moves the receiver view so it just encloses its subviews.


##7.Laying out Subviews

####1)   - layoutSubviews

Lays out subviews.

####2)   - setNeedsLayout

Invalidates the current layout of the receiver and triggers a layout update during the next update cycle.

####3)   - layoutIfNeeded

Lays out the subviews immediately.

####4)   (class) requiresConstraintBasedLayout

A Boolean value that indicates whether the receiver depends on the constraint-based layout system.

####5)translatesAutoresizingMaskIntoConstraints

A Boolean value that determines whether the view’s autoresizing mask is translated into Auto Layout constraints.

##8.Creating Constraints Using Layout Anchors

####1)bottomAnchor

A layout anchor representing the bottom edge of the view’s frame.

####2)centerXAnchor

A layout anchor representing the horizontal center of the view’s frame.

####3)centerYAnchor

A layout anchor representing the vertical center of the view’s frame.

####4)firstBaselineAnchor

A layout anchor representing the baseline for the topmost line of text in the view.

####5)heightAnchor

A layout anchor representing the height of the view’s frame.

####6)lastBaselineAnchor

A layout anchor representing the baseline for the bottommost line of text in the view.

####7)leadingAnchor

A layout anchor representing the leading edge of the view’s frame.

####8)leftAnchor

A layout anchor representing the left edge of the view’s frame.

####9)rightAnchor

A layout anchor representing the right edge of the view’s frame.

####10)topAnchor

A layout anchor representing the top edge of the view’s frame.

####11)trailingAnchor

A layout anchor representing the trailing edge of the view’s frame.

####12)widthAnchor

A layout anchor representing the width of the view’s frame.

##9.Managing the View’s Constraints

####1)constraints

The constraints held by the view.

####2)   - addConstraint:

Adds a constraint on the layout of the receiving view or its subviews.

####3)   - addConstraints:

Adds multiple constraints on the layout of the receiving view or its subviews.

####4)   - removeConstraint:

Removes the specified constraint from the view.

####5)   - removeConstraints:

Removes the specified constraints from the view.

##10.Working with Layout Guides

####1)   - addLayoutGuide:

Adds the specified layout guide to the view.

####2)layoutGuides

The array of layout guide objects owned by this view.

####3)layoutMarginsGuide

A layout guide representing the view’s margins.

####4)readableContentGuide

A layout guide representing an area with a readable width within the view.

####5)   - removeLayoutGuide:

Removes the specified layout guide from the view.

##11.Measuring in Auto Layout

