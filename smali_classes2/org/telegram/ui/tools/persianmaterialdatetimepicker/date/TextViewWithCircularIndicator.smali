.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;
.super Landroid/widget/TextView;
.source "TextViewWithCircularIndicator.java"


# instance fields
.field a:Landroid/graphics/Paint;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->c:I

    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080888

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->d:Ljava/lang/String;

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->a:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->a:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->e:Z

    return-void
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->e:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->setSelected(Z)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
