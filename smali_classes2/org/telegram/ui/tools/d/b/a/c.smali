.class public Lorg/telegram/ui/tools/d/b/a/c;
.super Landroid/app/Fragment;
.source "MonthMainFragement.java"


# static fields
.field public static a:Landroid/widget/TextView;

.field public static b:I

.field private static d:Landroid/support/v4/view/ViewPager;


# instance fields
.field private c:Lorg/telegram/ui/tools/d/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/telegram/ui/tools/d/b/a/c;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/d/b/a/c;->setRetainInstance(Z)V

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/d/b/a/c;)Lorg/telegram/ui/tools/d/b/a/d;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/a/c;->c:Lorg/telegram/ui/tools/d/b/a/d;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040036

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/a/c;->c:Lorg/telegram/ui/tools/d/b/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/tools/d/b/a/d;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/b/a/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/tools/d/b/a/d;-><init>(Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b/a/c;->c:Lorg/telegram/ui/tools/d/b/a/d;

    :cond_0
    const v0, 0x7f1000df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    sput-object v0, Lorg/telegram/ui/tools/d/b/a/c;->d:Landroid/support/v4/view/ViewPager;

    sget-object v0, Lorg/telegram/ui/tools/d/b/a/c;->d:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b/a/c;->c:Lorg/telegram/ui/tools/d/b/a/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v0, 0x7f100052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lorg/telegram/ui/tools/d/b/a/c;->a:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/tools/d/b/a;->c()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/ui/tools/d/b/a/c;->a:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/tools/d/b/a;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    sget-object v0, Lorg/telegram/ui/tools/d/b/a/c;->d:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lorg/telegram/ui/tools/d/b/a/c$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/d/b/a/c$1;-><init>(Lorg/telegram/ui/tools/d/b/a/c;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    sget-object v0, Lorg/telegram/ui/tools/d/b/a/c;->d:Landroid/support/v4/view/ViewPager;

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->g()V

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
