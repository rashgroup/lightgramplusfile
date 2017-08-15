.class public Lorg/telegram/ui/tools/d/b/c/d;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "YearPageAdapter.java"


# instance fields
.field a:[I


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    iput-object p2, p0, Lorg/telegram/ui/tools/d/b/c/d;->a:[I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/c/d;->a:[I

    aget v0, v0, p1

    return v0
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 2

    new-instance v0, Lorg/telegram/ui/tools/d/b/c/b;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b/c/d;->a:[I

    invoke-direct {v0, v1}, Lorg/telegram/ui/tools/d/b/c/b;-><init>([I)V

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b/c/d;->a:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
