.class public final Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;


# static fields
.field private static final ABSOLUTE:I = 0x2

.field public static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field public static final DEFAULT_TEXT_SIZE_FRACTION:F = 0.0533f

.field private static final FRACTIONAL:I = 0x0

.field private static final FRACTIONAL_IGNORE_PADDING:I = 0x1


# instance fields
.field private applyEmbeddedStyles:Z

.field private bottomPaddingFraction:F

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final painters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

.field private textSize:F

.field private textSizeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    sget-object v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    return-void
.end method

.method private getUserCaptionFontScaleV19()F
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    return v0
.end method

.method private getUserCaptionStyleV19()Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    move-result-object v0

    return-object v0
.end method

.method private setTextSize(IF)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-nez v1, :cond_1

    move v11, v0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getPaddingLeft()I

    move-result v4

    add-int v7, v3, v4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getPaddingTop()I

    move-result v3

    add-int v8, v1, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getPaddingRight()I

    move-result v4

    add-int v9, v3, v4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getPaddingBottom()I

    move-result v3

    sub-int v10, v2, v3

    if-le v10, v8, :cond_0

    if-gt v9, v7, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v11, v1

    goto :goto_0

    :cond_2
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    :goto_1
    const/4 v1, 0x0

    cmpg-float v1, v4, v1

    if-lez v1, :cond_0

    move v12, v0

    :goto_2
    if-ge v12, v11, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/text/Cue;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    move-object v6, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->draw(Lorg/telegram/messenger/exoplayer2/text/Cue;ZLorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;FFLandroid/graphics/Canvas;IIII)V

    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_2

    :cond_3
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSize:F

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->textSizeType:I

    if-nez v4, :cond_4

    sub-int v1, v10, v8

    :goto_3
    int-to-float v1, v1

    mul-float v4, v3, v1

    goto :goto_1

    :cond_4
    sub-int v1, v2, v1

    goto :goto_3
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->applyEmbeddedStyles:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setBottomPaddingFraction(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->bottomPaddingFraction:F

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setCues(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->cues:Ljava/util/List;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->painters:Ljava/util/List;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setFixedTextSize(IF)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-direct {p0, v1, v0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setTextSize(IF)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public setFractionalTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setFractionalTextSize(FZ)V

    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setTextSize(IF)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStyle(Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->style:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public setUserDefaultStyle()V
    .locals 2

    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getUserCaptionStyleV19()Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setStyle(Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;)V

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->DEFAULT:Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;

    goto :goto_0
.end method

.method public setUserDefaultTextSize()V
    .locals 2

    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->getUserCaptionFontScaleV19()F

    move-result v0

    :goto_0
    const v1, 0x3d5a511a    # 0.0533f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method
