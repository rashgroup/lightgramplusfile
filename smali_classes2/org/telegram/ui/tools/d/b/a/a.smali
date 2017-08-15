.class public Lorg/telegram/ui/tools/d/b/a/a;
.super Landroid/widget/BaseAdapter;
.source "MonthAdapter.java"


# instance fields
.field a:I

.field b:Lorg/telegram/ui/tools/d/b/b/b;

.field c:I

.field d:Landroid/graphics/Typeface;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/tools/d/b/a/a;->e:Landroid/content/Context;

    iput p2, p0, Lorg/telegram/ui/tools/d/b/a/a;->a:I

    new-instance v0, Lorg/telegram/ui/tools/d/b/b/b;

    invoke-direct {v0}, Lorg/telegram/ui/tools/d/b/b/b;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b/a/a;->b:Lorg/telegram/ui/tools/d/b/b/b;

    invoke-static {}, Lorg/telegram/ui/tools/d/b/a;->c()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b/a/a;->d:Landroid/graphics/Typeface;

    :try_start_0
    new-instance v0, Lorg/telegram/ui/tools/d/b/b/b;

    invoke-direct {v0}, Lorg/telegram/ui/tools/d/b/b/b;-><init>()V

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->c()I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/tools/d/b/b/b;->b(III)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/d/b/a/a;->c:I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lorg/telegram/ui/tools/d/b/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/a/a;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    const/16 v0, 0x1e

    iget v1, p0, Lorg/telegram/ui/tools/d/b/a/a;->a:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    const/16 v0, 0x1f

    :cond_0
    iget v1, p0, Lorg/telegram/ui/tools/d/b/a/a;->a:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->c()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/tools/d/b/b/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x1d

    :cond_1
    sget v1, Lorg/telegram/ui/tools/d/b/a;->d:I

    iget v2, p0, Lorg/telegram/ui/tools/d/b/a/a;->a:I

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/a/a;->b:Lorg/telegram/ui/tools/d/b/b/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->c()I

    move-result v0

    :cond_2
    add-int/lit8 v0, v0, 0x7

    iget v1, p0, Lorg/telegram/ui/tools/d/b/a/a;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const v4, 0x106000d

    add-int/lit8 v1, p1, -0x7

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040026

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f1000c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/tools/d/b/a/a;->d:Landroid/graphics/Typeface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/tools/d/b/a/a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/tools/d/b/a/a;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/d/b/a/a;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-ltz v1, :cond_5

    iget v2, p0, Lorg/telegram/ui/tools/d/b/a/a;->c:I

    sub-int v2, v1, v2

    if-ltz v2, :cond_5

    iget v2, p0, Lorg/telegram/ui/tools/d/b/a/a;->c:I

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lorg/telegram/ui/tools/d/b/a/a;->a:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/tools/d/b/a/a;->b:Lorg/telegram/ui/tools/d/b/b/b;

    invoke-virtual {v3}, Lorg/telegram/ui/tools/d/b/b/b;->b()I

    move-result v3

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/telegram/ui/tools/d/b/a/a;->b:Lorg/telegram/ui/tools/d/b/b/b;

    invoke-virtual {v3}, Lorg/telegram/ui/tools/d/b/b/b;->c()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->c()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/tools/d/b/a/a;->b:Lorg/telegram/ui/tools/d/b/b/b;

    invoke-virtual {v3}, Lorg/telegram/ui/tools/d/b/b/b;->a()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/tools/d/b/a/a;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b/b/a;->b(Landroid/widget/TextView;)V

    :cond_2
    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->b()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/tools/d/b/a/a;->a:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->a()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-ne v2, v3, :cond_3

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b/b/a;->a(Landroid/widget/TextView;)V

    invoke-static {}, Lorg/telegram/ui/tools/d/b/a;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lorg/telegram/ui/tools/d/b/a/a$1;

    invoke-direct {v2, p0, v1, v0}, Lorg/telegram/ui/tools/d/b/a/a$1;-><init>(Lorg/telegram/ui/tools/d/b/a/a;ILandroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_0
    return-object p2

    :cond_5
    if-gez v1, :cond_4

    sget-object v2, Lorg/telegram/ui/tools/d/b/b/b;->a:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x7

    aget-object v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
