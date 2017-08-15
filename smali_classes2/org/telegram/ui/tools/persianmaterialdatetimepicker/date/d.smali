.class public abstract Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;
.super Landroid/widget/BaseAdapter;
.source "MonthAdapter.java"

# interfaces
.implements Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;
    }
.end annotation


# static fields
.field protected static b:I


# instance fields
.field protected final a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

.field private final c:Landroid/content/Context;

.field private d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    sput v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->c:Landroid/content/Context;

    iput-object p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->a()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->f()Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;)V

    return-void
.end method

.method private a(II)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;

    iget v0, v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->a:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;

    iget v0, v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->b:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;
.end method

.method protected a()V
    .locals 4

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;-><init>(J)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;

    return-void
.end method

.method public a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;)V

    :cond_0
    return-void
.end method

.method protected b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->j()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    iget v1, p1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->a:I

    iget v2, p1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->b:I

    iget v3, p1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->c:I

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->a(III)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;)V

    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->h()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->g()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    check-cast p2, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    invoke-virtual {p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    rem-int/lit8 v2, p1, 0xc

    div-int/lit8 v3, p1, 0xc

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->g()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v3, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->a(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;

    iget v1, v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->c:I

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->b()V

    const-string/jumbo v4, "selected_day"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "year"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "month"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "week_start"

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-interface {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->setMonthParams(Ljava/util/HashMap;)V

    invoke-virtual {p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->invalidate()V

    return-object p2

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->c:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;->a(Landroid/content/Context;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;

    move-result-object p2

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->setClickable(Z)V

    invoke-virtual {p2, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;->setOnDayClickListener(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e$b;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
