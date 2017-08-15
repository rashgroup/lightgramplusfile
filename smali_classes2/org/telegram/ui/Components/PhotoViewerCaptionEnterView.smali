.class public Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
.super Landroid/widget/FrameLayout;
.source "PhotoViewerCaptionEnterView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;
    }
.end annotation


# instance fields
.field private audioInterfaceState:I

.field private final captionMaxLength:I

.field private currentActionMode:Landroid/view/ActionMode;

.field private delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

.field private emojiButton:Landroid/widget/ImageView;

.field private emojiPadding:I

.field private emojiView:Lorg/telegram/ui/Components/EmojiView;

.field private forceFloatingEmoji:Z

.field private innerTextChange:Z

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private messageEditText:Landroid/widget/EditText;

.field private runningAnimation:Landroid/animation/AnimatorSet;

.field private runningAnimation2:Landroid/animation/AnimatorSet;

.field private runningAnimationAudio:Landroid/animation/ObjectAnimator;

.field private runningAnimationType:I

.field private sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

.field private windowView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V
    .locals 12

    const/4 v0, -0x1

    const/16 v11, 0x30

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xc8

    iput v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->captionMaxLength:I

    const/high16 v1, 0x7f000000

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setBackgroundColor(I)V

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFocusable(Z)V

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFocusableInTouchMode(Z)V

    iput-object p3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x40000000    # 2.0f

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v9, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const v2, 0x7f020172

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v3, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const/16 v2, 0x53

    invoke-static {v11, v11, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v2, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v2, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$4;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const-string/jumbo v2, "AddCaption"

    const v3, 0x7f080059

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    or-int/lit16 v2, v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v10, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v9, v2, v9, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const v2, -0x4d000001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    new-array v1, v10, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v9

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v9, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x53

    const/high16 v3, 0x42500000    # 52.0f

    const/high16 v5, 0x40c00000    # 6.0f

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$5;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$6;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$7;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v1, 0x7f02011d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0x50

    invoke-static {v11, v11, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$8;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboardInternal()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/view/ActionMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->fixActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->innerTextChange:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private fixActionMode(Landroid/view/ActionMode;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "com.android.internal.view.FloatingActionMode"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v0, "mFloatingToolbar"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "com.android.internal.widget.FloatingToolbar"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mPopup"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-string/jumbo v4, "mWidthChanged"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v0, "com.android.internal.widget.FloatingToolbar$FloatingToolbarPopup"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "mParent"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->windowView:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v0, "updateViewLocationInWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onWindowSizeChanged()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getHeight()I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onWindowSizeChanged(I)V

    :cond_1
    return-void
.end method

.method private openKeyboardInternal()V
    .locals 1

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboard()V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private showPopup(I)V
    .locals 5

    const/high16 v4, 0x43480000    # 200.0f

    const/4 v3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v3, v3, v1}, Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$10;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setListener(Lorg/telegram/ui/Components/EmojiView$Listener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    if-gtz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "emoji"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "kbd_height"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    if-gtz v0, :cond_2

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "emoji"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "kbd_height_land3"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    :cond_2
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EmojiView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->forceFloatingEmoji:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v0, :cond_4

    iput v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->requestLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    move v1, v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiButton:Landroid/widget/ImageView;

    const v1, 0x7f020172

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v0, :cond_4

    if-nez p1, :cond_9

    iput v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->requestLayout()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    goto :goto_1
.end method


# virtual methods
.method public closeKeyboard()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public getCursorPosition()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    goto :goto_0
.end method

.method public getEmojiPadding()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    return v0
.end method

.method public getFieldCharSequence()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideActionMode()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->currentActionMode:Landroid/view/ActionMode;

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hidePopup()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V

    :cond_0
    return-void
.end method

.method public isKeyboardVisible()Z
    .locals 1

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupShowing()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupView(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hidePopup()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->closeKeyboard()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;)V

    :cond_1
    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 5

    const/4 v2, 0x0

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-le p1, v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->forceFloatingEmoji:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_3

    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "emoji"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "kbd_height_land3"

    iget v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeightLand:I

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v3, v1, :cond_2

    :cond_1
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    if-eqz v1, :cond_2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->requestLayout()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue1:I

    if-ne v0, p1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue2:Z

    if-ne v0, p2, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    :goto_2
    return-void

    :cond_3
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "emoji"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "kbd_height"

    iget v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardHeight:I

    move v1, v0

    goto :goto_1

    :cond_5
    iput p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue1:I

    iput-boolean p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->lastSizeChangeValue2:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-lez p1, :cond_8

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->showPopup(I)V

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_7

    iput v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->emojiPadding:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->requestLayout()V

    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onWindowSizeChanged()V

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method public openKeyboard()V
    .locals 15

    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v14, v2

    :goto_0
    move-wide v2, v0

    move v6, v5

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    const/4 v10, 0x1

    move-wide v6, v0

    move-wide v8, v0

    move v11, v5

    move v12, v5

    move v13, v4

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v14}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v2

    move-object v3, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v14, v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public replaceWithText(IILjava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    return-void
.end method

.method public setFieldFocused(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$9;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->keyboardVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method

.method public setFieldText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->delegate:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->messageEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setForceFloatingEmoji(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->forceFloatingEmoji:Z

    return-void
.end method
