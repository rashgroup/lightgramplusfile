.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;
.super Landroid/app/DialogFragment;
.source "TimePickerDialog.java"

# interfaces
.implements Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$a;,
        Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;,
        Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;
    }
.end annotation


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

.field private C:I

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;

.field private b:Landroid/content/DialogInterface$OnCancelListener;

.field private c:Landroid/content/DialogInterface$OnDismissListener;

.field private d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:C

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;IIZ)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;
    .locals 1

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-direct {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;IIZ)V

    return-object v0
.end method

.method private a(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->k:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->k:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "%02d"

    :cond_0
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "%d"

    rem-int/lit8 p1, p1, 0xc

    if-nez p1, :cond_0

    const/16 p1, 0xc

    goto :goto_0
.end method

.method private a(IZZZ)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(IZ)V

    if-nez p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    if-nez v1, :cond_0

    rem-int/lit8 v0, v0, 0xc

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->F:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->f:Landroid/widget/TextView;

    move-object v2, v0

    :goto_0
    if-nez p1, :cond_5

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->m:I

    move v1, v0

    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->m:I

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x3f59999a    # 0.85f

    const v1, 0x3f8ccccd    # 1.1f

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p3, :cond_2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->G:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->H:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->h:Landroid/widget/TextView;

    move-object v2, v0

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->n:I

    move v1, v0

    goto :goto_1

    :cond_6
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->n:I

    goto :goto_2
.end method

.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(I)V

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;IZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(IZZZ)V

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->z:Z

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a([Ljava/lang/Boolean;)[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(II)V

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->b(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(Z)Z

    :cond_2
    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->z:Z

    return v0
.end method

.method private a([Ljava/lang/Boolean;)[I
    .locals 10

    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->g(I)I

    move-result v4

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    move v4, v5

    move v6, v0

    :goto_1
    move v7, v3

    move v8, v3

    move v3, v4

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v3, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    iget-object v9, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->f(I)I

    move-result v0

    if-ne v3, v4, :cond_2

    move v8, v0

    :cond_0
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    invoke-direct {p0, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->g(I)I

    move-result v4

    if-ne v0, v4, :cond_6

    move v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v9, v4, 0x1

    if-ne v3, v9, :cond_3

    mul-int/lit8 v9, v0, 0xa

    add-int/2addr v8, v9

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v4, 0x2

    if-ne v3, v9, :cond_4

    move v7, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v4, 0x3

    if-ne v3, v9, :cond_0

    mul-int/lit8 v9, v0, 0xa

    add-int/2addr v7, v9

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    goto :goto_3

    :cond_5
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v7, v0, v1

    aput v8, v0, v2

    aput v6, v0, v5

    return-object v0

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    move v4, v2

    move v6, v3

    goto :goto_1
.end method

.method private b(I)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    move p1, v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b(Z)V
    .locals 10

    const/16 v9, 0x20

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(IZ)V

    invoke-direct {p0, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->b(I)V

    iget-boolean v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    if-nez v3, :cond_0

    const/16 v3, 0xc

    if-ge v2, v3, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0, v1, v1, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(IZZZ)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    new-array v3, v8, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-direct {p0, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a([Ljava/lang/Boolean;)[I

    move-result-object v4

    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "%02d"

    :goto_2
    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "%02d"

    :goto_3
    aget v5, v4, v0

    if-ne v5, v7, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->x:Ljava/lang/String;

    :goto_4
    aget v5, v4, v1

    if-ne v5, v7, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->x:Ljava/lang/String;

    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->f:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->g:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->f:Landroid/widget/TextView;

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->n:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->h:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->i:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->h:Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    if-nez v0, :cond_1

    aget v0, v4, v8

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "%2d"

    goto :goto_2

    :cond_5
    const-string/jumbo v3, "%2d"

    goto :goto_3

    :cond_6
    new-array v5, v1, [Ljava/lang/Object;

    aget v6, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-char v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->w:C

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    new-array v5, v1, [Ljava/lang/Object;

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->w:C

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->B:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->b(I)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->c(I)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;

    return-object v0
.end method

.method private c()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a([Ljava/lang/Boolean;)[I

    move-result-object v2

    aget v3, v2, v1

    if-ltz v3, :cond_0

    aget v3, v2, v0

    if-ltz v3, :cond_0

    aget v2, v2, v0

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->g(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->g(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private c(I)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->dismiss()V

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->z:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(Z)V

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v0, 0x42

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->z:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->c()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-direct {p0, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(Z)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;II)V

    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->dismiss()V

    move v0, v1

    goto :goto_0

    :cond_8
    const/16 v0, 0x43

    if-ne p1, v0, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->z:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d()I

    move-result v0

    invoke-direct {p0, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->g(I)I

    move-result v3

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->o:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->y:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->b(Z)V

    :cond_9
    move v0, v2

    goto :goto_0

    :cond_a
    invoke-direct {p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->g(I)I

    move-result v3

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->p:Ljava/lang/String;

    goto :goto_1

    :cond_b
    const-string/jumbo v3, "%d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->f(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_c
    const/4 v0, 0x7

    if-eq p1, v0, :cond_d

    const/16 v0, 0x8

    if-eq p1, v0, :cond_d

    const/16 v0, 0x9

    if-eq p1, v0, :cond_d

    const/16 v0, 0xa

    if-eq p1, v0, :cond_d

    const/16 v0, 0xb

    if-eq p1, v0, :cond_d

    const/16 v0, 0xc

    if-eq p1, v0, :cond_d

    const/16 v0, 0xd

    if-eq p1, v0, :cond_d

    const/16 v0, 0xe

    if-eq p1, v0, :cond_d

    const/16 v0, 0xf

    if-eq p1, v0, :cond_d

    const/16 v0, 0x10

    if-eq p1, v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    if-nez v0, :cond_9

    invoke-direct {p0, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->g(I)I

    move-result v0

    if-eq p1, v0, :cond_d

    invoke-direct {p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->g(I)I

    move-result v0

    if-ne p1, v0, :cond_9

    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->z:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    if-nez v0, :cond_e

    const-string/jumbo v0, "TimePickerDialog"

    const-string/jumbo v2, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->e(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->b(Z)V

    :cond_10
    move v0, v1

    goto/16 :goto_0
.end method

.method private d()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->e:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return v0
.end method

.method static synthetic d(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    return-object v0
.end method

.method private d(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->z:Z

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->b(Z)V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 18

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/16 v3, 0x9

    const/16 v4, 0xa

    const/16 v5, 0xb

    const/16 v6, 0xc

    const/16 v7, 0xd

    const/16 v8, 0xe

    const/16 v9, 0xf

    const/16 v10, 0x10

    new-instance v11, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v12, 0x0

    new-array v12, v12, [I

    invoke-direct {v11, v12}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->B:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    if-eqz v11, :cond_0

    new-instance v11, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v12, 0x6

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v1, v12, v13

    const/4 v13, 0x1

    aput v2, v12, v13

    const/4 v13, 0x2

    aput v3, v12, v13

    const/4 v13, 0x3

    aput v4, v12, v13

    const/4 v13, 0x4

    aput v5, v12, v13

    const/4 v13, 0x5

    aput v6, v12, v13

    invoke-direct {v11, v12}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    new-instance v12, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/16 v13, 0xa

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v1, v13, v14

    const/4 v14, 0x1

    aput v2, v13, v14

    const/4 v14, 0x2

    aput v3, v13, v14

    const/4 v14, 0x3

    aput v4, v13, v14

    const/4 v14, 0x4

    aput v5, v13, v14

    const/4 v14, 0x5

    aput v6, v13, v14

    const/4 v14, 0x6

    aput v7, v13, v14

    const/4 v14, 0x7

    aput v8, v13, v14

    const/16 v14, 0x8

    aput v9, v13, v14

    const/16 v14, 0x9

    aput v10, v13, v14

    invoke-direct {v12, v13}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v13, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v1, v14, v15

    const/4 v15, 0x1

    aput v2, v14, v15

    invoke-direct {v13, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->B:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    invoke-virtual {v14, v13}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v14, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v15, 0x6

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v1, v15, v16

    const/16 v16, 0x1

    aput v2, v15, v16

    const/16 v16, 0x2

    aput v3, v15, v16

    const/16 v16, 0x3

    aput v4, v15, v16

    const/16 v16, 0x4

    aput v5, v15, v16

    const/16 v16, 0x5

    aput v6, v15, v16

    invoke-direct {v14, v15}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v13, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    invoke-virtual {v14, v11}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v15, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v7, v16, v17

    const/16 v17, 0x1

    aput v8, v16, v17

    const/16 v17, 0x2

    aput v9, v16, v17

    const/16 v17, 0x3

    aput v10, v16, v17

    invoke-direct/range {v15 .. v16}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v14, v15}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v14, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v15, 0x4

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v7, v15, v16

    const/16 v16, 0x1

    aput v8, v15, v16

    const/16 v16, 0x2

    aput v9, v15, v16

    const/16 v16, 0x3

    aput v10, v15, v16

    invoke-direct {v14, v15}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v13, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    invoke-virtual {v14, v11}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v13, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v3, v14, v15

    invoke-direct {v13, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->B:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    invoke-virtual {v14, v13}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v14, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v15, 0x4

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v1, v15, v16

    const/4 v1, 0x1

    aput v2, v15, v1

    const/4 v1, 0x2

    aput v3, v15, v1

    const/4 v1, 0x3

    aput v4, v15, v1

    invoke-direct {v14, v15}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v13, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    invoke-virtual {v14, v11}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v5, v2, v3

    const/4 v3, 0x1

    aput v6, v2, v3

    invoke-direct {v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v13, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    invoke-virtual {v1, v12}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v2, 0x7

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v5, v2, v3

    const/4 v3, 0x2

    aput v6, v2, v3

    const/4 v3, 0x3

    aput v7, v2, v3

    const/4 v3, 0x4

    aput v8, v2, v3

    const/4 v3, 0x5

    aput v9, v2, v3

    const/4 v3, 0x6

    aput v10, v2, v3

    invoke-direct {v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->B:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    invoke-virtual {v1, v11}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    :goto_0
    return-void

    :cond_0
    new-instance v11, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->g(I)I

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->g(I)I

    move-result v14

    aput v14, v12, v13

    invoke-direct {v11, v12}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    new-instance v12, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v2, v13, v14

    invoke-direct {v12, v13}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->B:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    invoke-virtual {v13, v12}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    invoke-virtual {v12, v11}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v13, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v14, 0x3

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v1, v14, v15

    const/4 v15, 0x1

    aput v2, v14, v15

    const/4 v15, 0x2

    aput v3, v14, v15

    invoke-direct {v13, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v12, v13}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    invoke-virtual {v13, v11}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v14, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v15, 0x6

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v1, v15, v16

    const/16 v16, 0x1

    aput v2, v15, v16

    const/16 v16, 0x2

    aput v3, v15, v16

    const/16 v16, 0x3

    aput v4, v15, v16

    const/16 v16, 0x4

    aput v5, v15, v16

    const/16 v16, 0x5

    aput v6, v15, v16

    invoke-direct {v14, v15}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v13, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    invoke-virtual {v14, v11}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v15, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/16 v16, 0xa

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v1, v16, v17

    const/16 v17, 0x1

    aput v2, v16, v17

    const/16 v17, 0x2

    aput v3, v16, v17

    const/16 v17, 0x3

    aput v4, v16, v17

    const/16 v17, 0x4

    aput v5, v16, v17

    const/16 v17, 0x5

    aput v6, v16, v17

    const/16 v17, 0x6

    aput v7, v16, v17

    const/16 v17, 0x7

    aput v8, v16, v17

    const/16 v17, 0x8

    aput v9, v16, v17

    const/16 v17, 0x9

    aput v10, v16, v17

    invoke-direct/range {v15 .. v16}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v14, v15}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    invoke-virtual {v15, v11}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v14, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v15, 0x4

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v7, v15, v16

    const/16 v16, 0x1

    aput v8, v15, v16

    const/16 v16, 0x2

    aput v9, v15, v16

    const/16 v16, 0x3

    aput v10, v15, v16

    invoke-direct {v14, v15}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v13, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    invoke-virtual {v14, v11}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v13, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v14, 0x3

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v4, v14, v15

    const/4 v15, 0x1

    aput v5, v14, v15

    const/4 v15, 0x2

    aput v6, v14, v15

    invoke-direct {v13, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v12, v13}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v12, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/16 v14, 0xa

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v1, v14, v15

    const/4 v15, 0x1

    aput v2, v14, v15

    const/4 v15, 0x2

    aput v3, v14, v15

    const/4 v15, 0x3

    aput v4, v14, v15

    const/4 v15, 0x4

    aput v5, v14, v15

    const/4 v15, 0x5

    aput v6, v14, v15

    const/4 v15, 0x6

    aput v7, v14, v15

    const/4 v15, 0x7

    aput v8, v14, v15

    const/16 v15, 0x8

    aput v9, v14, v15

    const/16 v15, 0x9

    aput v10, v14, v15

    invoke-direct {v12, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v13, v12}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    invoke-virtual {v12, v11}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v12, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/16 v13, 0x8

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v3, v13, v14

    const/4 v14, 0x1

    aput v4, v13, v14

    const/4 v14, 0x2

    aput v5, v13, v14

    const/4 v14, 0x3

    aput v6, v13, v14

    const/4 v14, 0x4

    aput v7, v13, v14

    const/4 v14, 0x5

    aput v8, v13, v14

    const/4 v14, 0x6

    aput v9, v13, v14

    const/4 v14, 0x7

    aput v10, v13, v14

    invoke-direct {v12, v13}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->B:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    invoke-virtual {v13, v12}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    invoke-virtual {v12, v11}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v13, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/4 v14, 0x6

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v1, v14, v15

    const/4 v15, 0x1

    aput v2, v14, v15

    const/4 v15, 0x2

    aput v3, v14, v15

    const/4 v15, 0x3

    aput v4, v14, v15

    const/4 v15, 0x4

    aput v5, v14, v15

    const/4 v15, 0x5

    aput v6, v14, v15

    invoke-direct {v13, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v12, v13}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    new-instance v12, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    const/16 v14, 0xa

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v1, v14, v15

    const/4 v1, 0x1

    aput v2, v14, v1

    const/4 v1, 0x2

    aput v3, v14, v1

    const/4 v1, 0x3

    aput v4, v14, v1

    const/4 v1, 0x4

    aput v5, v14, v1

    const/4 v1, 0x5

    aput v6, v14, v1

    const/4 v1, 0x6

    aput v7, v14, v1

    const/4 v1, 0x7

    aput v8, v14, v1

    const/16 v1, 0x8

    aput v9, v14, v1

    const/16 v1, 0x9

    aput v10, v14, v1

    invoke-direct {v12, v14}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;-><init>([I)V

    invoke-virtual {v13, v12}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    invoke-virtual {v12, v11}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V

    goto/16 :goto_0
.end method

.method private e(I)Z
    .locals 7

    const/4 v6, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->b()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d()I

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->f(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    const-string/jumbo v4, "%d"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private static f(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private g(I)I
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->C:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->D:I

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    move v0, v1

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->p:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v0, v4, :cond_1

    const-string/jumbo v4, "AM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string/jumbo v5, "PM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    new-array v0, v8, [C

    aput-char v4, v0, v1

    aput-char v5, v0, v7

    invoke-virtual {v3, v0}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->C:I

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->D:I

    :cond_1
    :goto_1
    if-nez p1, :cond_4

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->C:I

    :goto_2
    return v0

    :cond_2
    const-string/jumbo v0, "TimePickerDialog"

    const-string/jumbo v1, "Unable to find keycodes for AM and PM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-ne p1, v7, :cond_5

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->D:I

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->c()V

    return-void
.end method

.method public a(IIZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_2

    invoke-direct {p0, p2, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(IZ)V

    const-string/jumbo v0, "%d"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->q:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    invoke-direct {p0, v3, v3, v3, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(IZZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    invoke-direct {p0, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->b(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    invoke-direct {p0, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(I)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->c()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    invoke-direct {p0, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(Z)V

    goto :goto_1
.end method

.method public b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;IIZ)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;

    iput p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->r:I

    iput p3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->s:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    iput-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->z:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->u:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->v:Z

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->b:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->b:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->r:I

    const-string/jumbo v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->s:I

    const-string/jumbo v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    const-string/jumbo v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->z:Z

    const-string/jumbo v0, "dialog_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->u:Ljava/lang/String;

    const-string/jumbo v0, "dark_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->v:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x7f040050

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$a;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$a;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$1;)V

    const v0, 0x7f10026a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v0, 0x7f080887

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->E:Ljava/lang/String;

    const v0, 0x7f080890

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->F:Ljava/lang/String;

    const v0, 0x7f080889

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->G:Ljava/lang/String;

    const v0, 0x7f080891

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->H:Ljava/lang/String;

    const v0, 0x7f0f0075

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->m:I

    const v0, 0x7f0f0053

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->n:I

    const v0, 0x7f100265

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f100263

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->g:Landroid/widget/TextView;

    const v0, 0x7f100266

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->i:Landroid/widget/TextView;

    const v0, 0x7f100267

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f100269

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const-string/jumbo v0, "\u0642\u0628\u0644\u200c\u0627\u0632\u0638\u0647\u0631"

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->o:Ljava/lang/String;

    const-string/jumbo v0, "\u0628\u0639\u062f\u0627\u0632\u0638\u0647\u0631"

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->p:Ljava/lang/String;

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    const v0, 0x7f10026d

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->setOnValueSelectedListener(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout$a;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->r:I

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->s:I

    iget-boolean v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(Landroid/content/Context;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;IIZ)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string/jumbo v1, "current_item_showing"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "current_item_showing"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(IZZZ)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->f:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$1;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->h:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$2;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100260

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->e:Landroid/widget/Button;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->e:Landroid/widget/Button;

    new-instance v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->e:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f10025f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$4;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->isCancelable()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f100268

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->k:Landroid/view/View;

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v0, 0x7f100264

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->q:Z

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->r:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(IZ)V

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->s:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->b(I)V

    const v0, 0x7f080895

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->x:Ljava/lang/String;

    const v0, 0x7f080885

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->y:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->x:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->w:C

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->D:I

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->C:I

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->e()V

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->z:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "typed_times"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    :goto_2
    const v0, 0x7f10026c

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->v:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->a(Landroid/content/Context;Z)V

    const v0, 0x7f0f0075

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    const v0, 0x7f0f0051

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    const v0, 0x7f0f005a

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v0, 0x7f0f006e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    const v0, 0x7f0f0071

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    const v0, 0x7f0f009e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    const v0, 0x7f0f0055

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v0, 0x7f0f006d

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v0, 0x7f0f005d

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    const v0, 0x7f0f006d

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v4, 0x7f0f006f

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getColor(I)I

    const v4, 0x7f0f009f

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    iget-boolean v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->v:Z

    if-eqz v5, :cond_7

    :goto_3
    invoke-virtual {v4, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->setBackgroundColor(I)V

    const v0, 0x7f10026a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->v:Z

    if-eqz v0, :cond_8

    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v6

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->r:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_5

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->k:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$5;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v3

    goto :goto_4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->c:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->c:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->b()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->a()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "hour_of_day"

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "minute"

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "is_24_hour_view"

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->t:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "current_item_showing"

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "in_kb_mode"

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->z:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "typed_times"

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->A:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const-string/jumbo v0, "dialog_title"

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "dark_theme"

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->v:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
