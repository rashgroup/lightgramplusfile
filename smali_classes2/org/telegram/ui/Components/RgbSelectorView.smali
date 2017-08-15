.class public Lorg/telegram/ui/Components/RgbSelectorView;
.super Landroid/widget/LinearLayout;
.source "RgbSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private imgPreview:Landroid/widget/ImageView;

.field private listener:Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;

.field private seekAlpha:Landroid/widget/SeekBar;

.field private seekBlue:Landroid/widget/SeekBar;

.field private seekGreen:Landroid/widget/SeekBar;

.field private seekRed:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/RgbSelectorView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->setPreviewImage()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/RgbSelectorView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->onColorChanged()V

    return-void
.end method

.method private init()V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/RgbSelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/RgbSelectorView$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/RgbSelectorView$1;-><init>(Lorg/telegram/ui/Components/RgbSelectorView;)V

    const v0, 0x7f10009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekRed:Landroid/widget/SeekBar;

    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekRed:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f1000a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekGreen:Landroid/widget/SeekBar;

    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekGreen:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f1000a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekBlue:Landroid/widget/SeekBar;

    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekBlue:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f1000a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekAlpha:Landroid/widget/SeekBar;

    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekAlpha:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f10009d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->imgPreview:Landroid/widget/ImageView;

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RgbSelectorView;->setColor(I)V

    return-void
.end method

.method private onColorChanged()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->listener:Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->listener:Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;->colorChanged(I)V

    :cond_0
    return-void
.end method

.method private setPreviewImage()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->getColor()I

    move-result v1

    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    iget-object v1, p0, Lorg/telegram/ui/Components/RgbSelectorView;->imgPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekAlpha:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekRed:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekGreen:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekBlue:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekAlpha:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekRed:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekGreen:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView;->seekBlue:Landroid/widget/SeekBar;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/RgbSelectorView;->setPreviewImage()V

    return-void
.end method

.method public setOnColorChangedListener(Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/RgbSelectorView;->listener:Lorg/telegram/ui/Components/RgbSelectorView$OnColorChangedListener;

    return-void
.end method
