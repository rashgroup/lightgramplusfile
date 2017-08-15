.class public Lorg/telegram/ui/Components/ColorSelectorView;
.super Landroid/widget/LinearLayout;
.source "ColorSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;,
        Lorg/telegram/ui/Components/ColorSelectorView$ColorTabContentFactory;
    }
.end annotation


# static fields
.field private static final HEX_TAG:Ljava/lang/String; = "HEX"

.field private static final HSV_TAG:Ljava/lang/String; = "HSV"

.field private static final RGB_TAG:Ljava/lang/String; = "RGB"


# instance fields
.field private color:I

.field private hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

.field private hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

.field private listener:Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;

.field private maxHeight:I

.field private maxWidth:I

.field private rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

.field private tabs:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxHeight:I

    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxWidth:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxHeight:I

    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxWidth:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ColorSelectorView;)Lorg/telegram/ui/Components/HsvSelectorView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ColorSelectorView;)Lorg/telegram/ui/Components/RgbSelectorView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ColorSelectorView;)Lorg/telegram/ui/Components/HexSelectorView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    return-object v0
.end method

.method private static createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f10029a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private init()V
    .locals 6

    const/4 v3, -0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ColorSelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/HsvSelectorView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/HsvSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HsvSelectorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ColorSelectorView$1;-><init>(Lorg/telegram/ui/Components/ColorSelectorView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HsvSelectorView;->setOnColorChangedListener(Lorg/telegram/ui/Components/HsvSelectorView$OnColorChangedListener;)V

    new-instance v1, Lorg/telegram/ui/Components/RgbSelectorView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/RgbSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RgbSelectorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorView$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ColorSelectorView$2;-><init>(Lorg/telegram/ui/Components/ColorSelectorView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RgbSelectorView;->setOnColorChangedListener(Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;)V

    new-instance v1, Lorg/telegram/ui/Components/HexSelectorView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/HexSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HexSelectorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorView$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ColorSelectorView$3;-><init>(Lorg/telegram/ui/Components/ColorSelectorView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/HexSelectorView;->setOnColorChangedListener(Lorg/telegram/ui/Components/HexSelectorView$OnColorChangedListener;)V

    const v1, 0x7f100092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    new-instance v0, Lorg/telegram/ui/Components/ColorSelectorView$ColorTabContentFactory;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ColorSelectorView$ColorTabContentFactory;-><init>(Lorg/telegram/ui/Components/ColorSelectorView;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    const-string/jumbo v2, "HSV"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "HSV"

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ColorSelectorView;->createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    const-string/jumbo v3, "RGB"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "RGB"

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ColorSelectorView;->createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    const-string/jumbo v4, "HEX"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "HEX"

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ColorSelectorView;->createTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private onColorChanged()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->listener:Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->listener:Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;->colorChanged(I)V

    :cond_0
    return-void
.end method

.method private setColor(ILandroid/view/View;)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->color:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->color:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hsvSelector:Lorg/telegram/ui/Components/HsvSelectorView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/HsvSelectorView;->setColor(I)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->rgbSelector:Lorg/telegram/ui/Components/RgbSelectorView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RgbSelectorView;->setColor(I)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/HexSelectorView;->setColor(I)V

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->onColorChanged()V

    goto :goto_0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->color:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    const-string/jumbo v0, "HSV"

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxHeight:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorSelectorView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxWidth:I

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxWidth:I

    iget v1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->maxHeight:I

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ColorSelectorView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ColorSelectorView;->setColor(ILandroid/view/View;)V

    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorSelectorView;->hexSelector:Lorg/telegram/ui/Components/HexSelectorView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/HexSelectorView;->setDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public setOnColorChangedListener(Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorSelectorView;->listener:Lorg/telegram/ui/Components/ColorSelectorView$OnColorChangedListener;

    return-void
.end method
