.class public Lorg/telegram/ui/Components/LayoutHelper;
.super Ljava/lang/Object;
.source "LayoutHelper.java"


# static fields
.field public static final MATCH_PARENT:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;
    .locals 5

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static createFrame(III)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public static createLinear(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method public static createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    int-to-float v1, p3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, p4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v3, p5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v4, p6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public static createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    int-to-float v1, p4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, p5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v3, p6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v4, p7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static createLinear(III)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float v1, p3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, p4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v3, p5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v4, p6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static createRelative(FFIIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    const/4 v6, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-ltz p6, :cond_0

    invoke-virtual {v0, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_0
    if-ltz p7, :cond_1

    if-ltz p8, :cond_1

    invoke-virtual {v0, p7, p8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_1
    int-to-float v1, p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v1, p3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v1, p4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    int-to-float v1, p5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public static createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    const/4 v6, -0x1

    const/4 v2, 0x0

    int-to-float v0, p0

    int-to-float v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, v6

    move v8, v6

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createRelative(III)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    const/4 v7, -0x1

    const/4 v2, 0x0

    int-to-float v0, p0

    int-to-float v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p2

    move v8, v7

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createRelative(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    const/4 v2, 0x0

    int-to-float v0, p0

    int-to-float v1, p1

    const/4 v6, -0x1

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, p2

    move v8, p3

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createRelative(IIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    const/4 v2, 0x0

    int-to-float v0, p0

    int-to-float v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createRelative(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    const/4 v6, -0x1

    int-to-float v0, p0

    int-to-float v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v8, v6

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createRelative(IIIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9

    const/4 v7, -0x1

    int-to-float v0, p0

    int-to-float v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(FFIIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static createScroll(III)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v1, p0

    invoke-static {v1}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v1

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/ui/Components/LayoutHelper;->getSize(F)I

    move-result v2

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method private static getSize(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    :goto_0
    float-to-int v0, p0

    return v0

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float p0, v0

    goto :goto_0
.end method
