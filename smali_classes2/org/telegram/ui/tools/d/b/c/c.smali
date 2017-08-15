.class public Lorg/telegram/ui/tools/d/b/c/c;
.super Landroid/app/Fragment;
.source "YearMainFragement.java"


# static fields
.field public static a:I

.field private static f:Landroid/support/v4/view/ViewPager;


# instance fields
.field b:I

.field c:I

.field d:[I

.field private e:Lorg/telegram/ui/tools/d/b/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/telegram/ui/tools/d/b/c/c;->a:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/d/b/c/c;->setRetainInstance(Z)V

    iput p1, p0, Lorg/telegram/ui/tools/d/b/c/c;->b:I

    iput p2, p0, Lorg/telegram/ui/tools/d/b/c/c;->c:I

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/d/b/c/c;)Lorg/telegram/ui/tools/d/b/c/d;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/c/c;->e:Lorg/telegram/ui/tools/d/b/c/d;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040036

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/tools/d/b/c/c;->c:I

    iget v1, p0, Lorg/telegram/ui/tools/d/b/c/c;->b:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b/c/c;->d:[I

    const/4 v1, 0x0

    iget v0, p0, Lorg/telegram/ui/tools/d/b/c/c;->b:I

    :goto_0
    iget v2, p0, Lorg/telegram/ui/tools/d/b/c/c;->c:I

    if-gt v0, v2, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/tools/d/b/c/c;->d:[I

    add-int/lit8 v2, v1, 0x1

    aput v0, v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/c/c;->e:Lorg/telegram/ui/tools/d/b/c/d;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/tools/d/b/c/d;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/b/c/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/d/b/c/c;->d:[I

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/tools/d/b/c/d;-><init>(Landroid/app/FragmentManager;[I)V

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b/c/c;->e:Lorg/telegram/ui/tools/d/b/c/d;

    :cond_1
    const v0, 0x7f1000df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    sput-object v0, Lorg/telegram/ui/tools/d/b/c/c;->f:Landroid/support/v4/view/ViewPager;

    sget-object v0, Lorg/telegram/ui/tools/d/b/c/c;->f:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b/c/c;->e:Lorg/telegram/ui/tools/d/b/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v0, 0x7f100052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lorg/telegram/ui/tools/d/b/c/c;->f:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lorg/telegram/ui/tools/d/b/c/c$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/d/b/c/c$1;-><init>(Lorg/telegram/ui/tools/d/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
