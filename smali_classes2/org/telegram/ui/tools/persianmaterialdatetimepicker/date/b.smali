.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;
.super Landroid/app/DialogFragment;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$a;,
        Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$b;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private final a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

.field private b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$b;

.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/DialogInterface$OnCancelListener;

.field private e:Landroid/content/DialogInterface$OnDismissListener;

.field private f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;

.field private m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

.field private s:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

.field private t:[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

.field private u:[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

.field private v:Z

.field private w:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$b;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$b;

    return-object v0
.end method

.method private a(II)V
    .locals 0

    return-void
.end method

.method private a(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    invoke-static {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    return-object v0
.end method

.method private b(I)V
    .locals 8

    const-wide/16 v6, 0x1f4

    const/4 v4, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->h:Landroid/widget/LinearLayout;

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f866666    # 1.05f

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->x:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iput-boolean v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->x:Z

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;->a()V

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->n:I

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->n:I

    :cond_1
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->k:Landroid/widget/TextView;

    const v1, 0x3f59999a    # 0.85f

    const v2, 0x3f8ccccd    # 1.1f

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->x:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iput-boolean v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->x:Z

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a()V

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->n:I

    if-eq v1, p1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->n:I

    :cond_3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/c;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$a;

    invoke-interface {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->e()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a(III)V

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->k()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->b(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a(Z)V

    return-void
.end method

.method public a(III)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a(III)V

    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->k()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a(Z)V

    return-void
.end method

.method public a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$a;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->v:Z

    return v0
.end method

.method public b()Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->r:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    return-object v0
.end method

.method public c()Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->s:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    return-object v0
.end method

.method public d()[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->t:[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    return-object v0
.end method

.method public e()[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->u:[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    return-object v0
.end method

.method public f()Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;
    .locals 2

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-direct {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;)V

    return-object v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->u:[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->u:[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->r:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->r:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->p:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->r:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->p:I

    goto :goto_0
.end method

.method public h()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->u:[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->u:[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->u:[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->s:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->s:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->q:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->s:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->q:I

    goto :goto_0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->o:I

    return v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->w:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->c()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->d:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->d:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->j()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100258

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100255

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->b(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const-string/jumbo v1, "year"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "month"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a(III)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const-string/jumbo v0, "DatePickerDialog"

    const-string/jumbo v1, "onCreateView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x7f040045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f10024d

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->g:Landroid/widget/TextView;

    const v0, 0x7f100255

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100256

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->i:Landroid/widget/TextView;

    const v0, 0x7f100257

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->j:Landroid/widget/TextView;

    const v0, 0x7f100258

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    const-string/jumbo v0, "week_start"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->o:I

    const-string/jumbo v0, "year_start"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->p:I

    const-string/jumbo v0, "year_end"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->q:I

    const-string/jumbo v0, "current_view"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "list_position"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "list_position_offset"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v0, "min_date"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->r:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const-string/jumbo v0, "max_date"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->s:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const-string/jumbo v0, "highlighted_days"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    check-cast v0, [Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->t:[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const-string/jumbo v0, "selectable_days"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    check-cast v0, [Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->u:[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const-string/jumbo v0, "theme_dark"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->v:Z

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/f;

    invoke-direct {v0, v6, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/f;-><init>(Landroid/content/Context;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

    invoke-direct {v0, v6, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;-><init>(Landroid/content/Context;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080884

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->y:Ljava/lang/String;

    const v4, 0x7f08088f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->z:Ljava/lang/String;

    const v4, 0x7f080897

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->A:Ljava/lang/String;

    const v4, 0x7f080893

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->B:Ljava/lang/String;

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->v:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f0067

    :goto_1
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f10025a

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v0, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->f:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/AccessibleDateAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f100260

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$1;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10025f

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$2;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->isCancelable()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a(Z)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->b(I)V

    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    if-nez v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;->a(I)V

    :cond_0
    :goto_3
    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    invoke-direct {v0, v6}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->w:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    return-object v5

    :cond_1
    const v0, 0x7f0f0066

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x8

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a(II)V

    goto :goto_3

    :cond_4
    move v3, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->e:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->w:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->b()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->w:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->a()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "year"

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "month"

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "day"

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "week_start"

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "year_start"

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "year_end"

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "current_view"

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, -0x1

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->n:I

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->l:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;->getMostVisiblePosition()I

    move-result v0

    :cond_0
    :goto_0
    const-string/jumbo v1, "list_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "min_date"

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->r:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v0, "max_date"

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->s:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v0, "highlighted_days"

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->t:[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v0, "selectable_days"

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->u:[Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v0, "theme_dark"

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->v:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->getFirstVisiblePosition()I

    move-result v0

    const-string/jumbo v1, "list_position_offset"

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->m:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->getFirstPositionOffset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
