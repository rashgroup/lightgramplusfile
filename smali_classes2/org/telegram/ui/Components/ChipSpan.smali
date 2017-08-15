.class public Lorg/telegram/ui/Components/ChipSpan;
.super Landroid/text/style/ImageSpan;
.source "ChipSpan.java"


# instance fields
.field public uid:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method


# virtual methods
.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 6

    if-nez p5, :cond_0

    new-instance v5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    neg-int v3, v2

    sub-int/2addr v3, v1

    iput v3, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v3, v2, v1

    iput v3, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    neg-int v3, v2

    sub-int/2addr v3, v1

    iput v3, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    const/4 v3, 0x0

    iput v3, v5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    sub-int v1, v2, v1

    iput v1, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    return v0

    :cond_0
    move-object v5, p5

    goto :goto_0
.end method
