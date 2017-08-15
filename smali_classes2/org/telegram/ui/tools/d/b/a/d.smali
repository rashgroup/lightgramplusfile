.class public Lorg/telegram/ui/tools/d/b/a/d;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "MonthPageAdapter.java"


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    sget v0, Lorg/telegram/ui/tools/d/b/a;->d:I

    if-lez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/tools/d/b/b/b;

    invoke-direct {v0}, Lorg/telegram/ui/tools/d/b/b/b;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->a()I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget v0, Lorg/telegram/ui/tools/d/b/a;->d:I

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/telegram/ui/tools/d/b/b/b;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1

    new-instance v0, Lorg/telegram/ui/tools/d/b/a/b;

    invoke-direct {v0, p1}, Lorg/telegram/ui/tools/d/b/a/b;-><init>(I)V

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lorg/telegram/ui/tools/d/b/b/b;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
