.class public Lorg/telegram/ui/tools/d/b/a;
.super Landroid/app/DialogFragment;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/d/b/a$a;
    }
.end annotation


# static fields
.field public static a:Landroid/widget/LinearLayout;

.field static b:I

.field static c:Z

.field public static d:I

.field static e:I

.field static f:I

.field private static j:Landroid/graphics/drawable/GradientDrawable;

.field private static k:Landroid/widget/TextView;

.field private static l:Landroid/widget/TextView;

.field private static m:I

.field private static n:Lorg/telegram/ui/tools/d/b/a$a;

.field private static o:I

.field private static p:Landroid/graphics/Typeface;

.field private static q:Z

.field private static r:Landroid/widget/TextView;

.field private static s:Landroid/widget/TextView;


# instance fields
.field g:Landroid/widget/TextView;

.field h:Landroid/app/FragmentManager;

.field i:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/telegram/ui/tools/d/b/a;->m:I

    sput v0, Lorg/telegram/ui/tools/d/b/a;->o:I

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/tools/d/b/a;->p:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->j:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public static a(Lorg/telegram/ui/tools/d/b/a$a;IIIIZ)Lorg/telegram/ui/tools/d/b/a;
    .locals 5

    const v4, 0x7f0c008a

    const/4 v3, 0x2

    const/4 v2, 0x0

    new-instance v0, Lorg/telegram/ui/tools/d/b/a;

    invoke-direct {v0}, Lorg/telegram/ui/tools/d/b/a;-><init>()V

    sput-boolean p5, Lorg/telegram/ui/tools/d/b/a;->c:Z

    sget-boolean v1, Lorg/telegram/ui/tools/d/b/a;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/tools/d/b/a;->setStyle(II)V

    :goto_0
    sput-object p0, Lorg/telegram/ui/tools/d/b/a;->n:Lorg/telegram/ui/tools/d/b/a$a;

    invoke-static {p2, p3, p4, v2}, Lorg/telegram/ui/tools/d/b/b/a;->setDate(IIIZ)V

    new-instance v1, Lorg/telegram/ui/tools/d/b/b/b;

    invoke-direct {v1}, Lorg/telegram/ui/tools/d/b/b/b;-><init>()V

    invoke-virtual {v1}, Lorg/telegram/ui/tools/d/b/b/b;->a()I

    move-result v1

    sput v1, Lorg/telegram/ui/tools/d/b/a;->f:I

    sget v1, Lorg/telegram/ui/tools/d/b/a;->f:I

    add-int/lit8 v1, v1, 0x2

    sput v1, Lorg/telegram/ui/tools/d/b/a;->e:I

    const/4 v1, 0x1

    sput-boolean v1, Lorg/telegram/ui/tools/d/b/a;->q:Z

    sput p1, Lorg/telegram/ui/tools/d/b/a;->b:I

    sput v2, Lorg/telegram/ui/tools/d/b/a;->m:I

    sput v2, Lorg/telegram/ui/tools/d/b/a;->o:I

    const/4 v1, 0x0

    sput-object v1, Lorg/telegram/ui/tools/d/b/a;->p:Landroid/graphics/Typeface;

    sput v2, Lorg/telegram/ui/tools/d/b/a;->d:I

    return-object v0

    :cond_0
    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/tools/d/b/a;->setStyle(II)V

    goto :goto_0
.end method

.method public static a(Lorg/telegram/ui/tools/d/b/a$a;IZ)Lorg/telegram/ui/tools/d/b/a;
    .locals 6

    new-instance v0, Lorg/telegram/ui/tools/d/b/b/b;

    invoke-direct {v0}, Lorg/telegram/ui/tools/d/b/b/b;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->a()I

    move-result v2

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->b()I

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->c()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/tools/d/b/a;->a(Lorg/telegram/ui/tools/d/b/a$a;IIIIZ)Lorg/telegram/ui/tools/d/b/a;

    move-result-object v0

    return-object v0
.end method

.method public static b(III)V
    .locals 3

    :try_start_0
    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->r:Landroid/widget/TextView;

    sget-object v1, Lorg/telegram/ui/tools/d/b/b/b;->b:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->k:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/tools/d/b/b/b;

    invoke-direct {v1}, Lorg/telegram/ui/tools/d/b/b/b;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lorg/telegram/ui/tools/d/b/b/b;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lorg/telegram/ui/tools/d/b/a;->q:Z

    return v0
.end method

.method public static c()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->p:Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    sput p1, Lorg/telegram/ui/tools/d/b/a;->m:I

    return-void
.end method

.method public a(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/telegram/ui/tools/d/b/b/a;->setDate(IIIZ)V

    return-void
.end method

.method a(Landroid/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/a;->h:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f10017a

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 4

    new-instance v0, Lorg/telegram/ui/tools/d/b/b/b;

    invoke-direct {v0}, Lorg/telegram/ui/tools/d/b/b/b;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/tools/d/b/b/b;->d(III)V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->a()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->b()I

    move-result v2

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->c()I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lorg/telegram/ui/tools/d/b/b/a;->setDate(IIIZ)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_4

    new-instance v0, Lorg/telegram/ui/tools/d/b/b/b;

    invoke-direct {v0}, Lorg/telegram/ui/tools/d/b/b/b;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->b()I

    move-result v1

    sput v1, Lorg/telegram/ui/tools/d/b/a;->d:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->a()I

    move-result v1

    sput v1, Lorg/telegram/ui/tools/d/b/a;->e:I

    sget v1, Lorg/telegram/ui/tools/d/b/a;->f:I

    sget v2, Lorg/telegram/ui/tools/d/b/a;->e:I

    if-le v1, v2, :cond_0

    sget v1, Lorg/telegram/ui/tools/d/b/a;->e:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lorg/telegram/ui/tools/d/b/a;->f:I

    :cond_0
    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->b()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->b()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->b()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/tools/d/b/b/a;->b(I)V

    :cond_1
    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->a()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->c()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->c()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/tools/d/b/b/a;->a(I)V

    :cond_2
    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->c()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->a()I

    move-result v2

    if-le v1, v2, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->a()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b/b/a;->c(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v0, 0x0

    sput v0, Lorg/telegram/ui/tools/d/b/a;->d:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100179

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/telegram/ui/tools/d/b/c/c;

    sget v1, Lorg/telegram/ui/tools/d/b/a;->f:I

    sget v2, Lorg/telegram/ui/tools/d/b/a;->e:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/tools/d/b/c/c;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/d/b/a;->a(Landroid/app/Fragment;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100177

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/telegram/ui/tools/d/b/a/c;

    invoke-direct {v0}, Lorg/telegram/ui/tools/d/b/a/c;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/d/b/a;->a(Landroid/app/Fragment;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10017b

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->n:Lorg/telegram/ui/tools/d/b/a$a;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v0, Lorg/telegram/ui/tools/d/b/b/b;

    invoke-direct {v0}, Lorg/telegram/ui/tools/d/b/b/b;-><init>()V

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->c()I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->b()I

    move-result v3

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->a()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/tools/d/b/b/b;->c(III)V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->d()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->e()I

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/b/b/b;->f()I

    move-result v0

    invoke-virtual {v2, v1, v3, v0}, Ljava/util/Calendar;->set(III)V

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->n:Lorg/telegram/ui/tools/d/b/a$a;

    sget v1, Lorg/telegram/ui/tools/d/b/a;->b:I

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->c()I

    move-result v3

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->b()I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->a()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/tools/d/b/a$a;->a(ILjava/util/Calendar;III)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b/b/c;->a(Landroid/content/Context;)V

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/b/a;->dismiss()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v4, 0x7f100177

    const v0, 0x7f040043

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lorg/telegram/ui/tools/d/b/a;->m:I

    if-nez v0, :cond_0

    const v0, -0xff6634

    sput v0, Lorg/telegram/ui/tools/d/b/a;->m:I

    :cond_0
    sget v0, Lorg/telegram/ui/tools/d/b/a;->o:I

    if-nez v0, :cond_1

    const v0, -0x7f7f80

    sput v0, Lorg/telegram/ui/tools/d/b/a;->o:I

    :cond_1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sput-object v0, Lorg/telegram/ui/tools/d/b/a;->j:Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->j:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->j:Landroid/graphics/drawable/GradientDrawable;

    sget v2, Lorg/telegram/ui/tools/d/b/a;->m:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->j:Landroid/graphics/drawable/GradientDrawable;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    const v0, 0x7f10017a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b/a;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/b/a;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b/a;->h:Landroid/app/FragmentManager;

    const v0, 0x7f100175

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string/jumbo v2, "actionBarDefault"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const v0, 0x7f1000c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lorg/telegram/ui/tools/d/b/a;->l:Landroid/widget/TextView;

    const v0, 0x7f100178

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lorg/telegram/ui/tools/d/b/a;->r:Landroid/widget/TextView;

    const v0, 0x7f100179

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lorg/telegram/ui/tools/d/b/a;->s:Landroid/widget/TextView;

    const v0, 0x7f100176

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lorg/telegram/ui/tools/d/b/a;->k:Landroid/widget/TextView;

    const v0, 0x7f10017b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b/a;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/a;->g:Landroid/widget/TextView;

    const-string/jumbo v2, "#FF424242"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lorg/telegram/ui/tools/d/b/a;->a:Landroid/widget/LinearLayout;

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->p:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->l:Landroid/widget/TextView;

    sget-object v2, Lorg/telegram/ui/tools/d/b/a;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->r:Landroid/widget/TextView;

    sget-object v2, Lorg/telegram/ui/tools/d/b/a;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->s:Landroid/widget/TextView;

    sget-object v2, Lorg/telegram/ui/tools/d/b/a;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->k:Landroid/widget/TextView;

    sget-object v2, Lorg/telegram/ui/tools/d/b/a;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/a;->g:Landroid/widget/TextView;

    sget-object v2, Lorg/telegram/ui/tools/d/b/a;->p:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lorg/telegram/ui/tools/d/b/a;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->c()I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->b()I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->a()I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/tools/d/b/a;->b(III)V

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->performClick()Z

    return-object v1
.end method

.method public onStart()V
    .locals 8

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/b/a;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v0

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/d/b/a;->setRetainInstance(Z)V

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    return-void
.end method
