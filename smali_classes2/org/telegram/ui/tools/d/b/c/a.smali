.class public Lorg/telegram/ui/tools/d/b/c/a;
.super Landroid/widget/BaseAdapter;
.source "YearAdapter.java"


# instance fields
.field a:[I

.field b:Landroid/graphics/Typeface;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/tools/d/b/c/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lorg/telegram/ui/tools/d/b/c/a;->a:[I

    invoke-static {}, Lorg/telegram/ui/tools/d/b/a;->c()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b/c/a;->b:Landroid/graphics/Typeface;

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/d/b/c/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/c/a;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/c/a;->a:[I

    array-length v0, v0

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
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f100179

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b/c/a;->b:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b/c/a;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/tools/d/b/c/a;->a:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b/c/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b/c/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b/c/a;->a:[I

    aget v1, v1, p1

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->c()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b/b/a;->c(Landroid/widget/TextView;)V

    invoke-static {}, Lorg/telegram/ui/tools/d/b/a;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    new-instance v1, Lorg/telegram/ui/tools/d/b/c/a$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/tools/d/b/c/a$1;-><init>(Lorg/telegram/ui/tools/d/b/c/a;ILandroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
