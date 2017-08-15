.class public Lorg/telegram/ui/tools/d/a;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "AddRemmber.java"

# interfaces
.implements Lorg/telegram/ui/tools/d/b/a$a;
.implements Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/d/a$d;,
        Lorg/telegram/ui/tools/d/a$c;,
        Lorg/telegram/ui/tools/d/a$b;,
        Lorg/telegram/ui/tools/d/a$a;,
        Lorg/telegram/ui/tools/d/a$f;,
        Lorg/telegram/ui/tools/d/a$e;
    }
.end annotation


# static fields
.field private static f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Landroid/widget/CheckBox;

.field private L:Landroid/widget/CheckBox;

.field private M:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private N:Landroid/widget/ProgressBar;

.field private O:Landroid/widget/LinearLayout;

.field private P:Lorg/telegram/ui/tools/d/a$e;

.field a:Landroid/view/View;

.field b:[Z

.field c:Landroid/content/SharedPreferences$Editor;

.field d:Landroid/view/View;

.field e:Landroid/content/SharedPreferences;

.field private g:Ljava/util/Calendar;

.field private h:Ljava/util/Calendar;

.field private i:Ljava/util/Calendar;

.field private j:Ljava/util/Calendar;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:I

.field private p:I

.field private q:Lorg/telegram/ui/tools/d/a$f;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Lorg/telegram/ui/tools/d/a$f;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/tools/d/a;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/d/a;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/d/a;->r:I

    return p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/a;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/d/a;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic b(Lorg/telegram/ui/tools/d/a;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/d/a;->t:I

    return p1
.end method

.method static synthetic b(Lorg/telegram/ui/tools/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/a;->z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lorg/telegram/ui/tools/d/a;)Lorg/telegram/ui/tools/d/a$f;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->x:Lorg/telegram/ui/tools/d/a$f;

    return-object v0
.end method

.method static synthetic c(Lorg/telegram/ui/tools/d/a;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/d/a;->s:I

    return p1
.end method

.method static synthetic c(Lorg/telegram/ui/tools/d/a;)Lorg/telegram/ui/tools/d/a$f;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->q:Lorg/telegram/ui/tools/d/a$f;

    return-object v0
.end method

.method static synthetic d(Lorg/telegram/ui/tools/d/a;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/d/a;->u:I

    return p1
.end method

.method static synthetic d(Lorg/telegram/ui/tools/d/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lorg/telegram/ui/tools/d/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lorg/telegram/ui/tools/d/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lorg/telegram/ui/tools/d/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->B:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 11

    const/4 v1, 0x1

    const/16 v10, 0xd

    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v3, 0x0

    new-instance v0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;

    invoke-direct {v0}, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->a(Landroid/content/Context;)V

    move v2, v3

    move v0, v3

    :goto_0
    const/4 v4, 0x7

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/a;->j:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/a;->i:Ljava/util/Calendar;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->j:Ljava/util/Calendar;

    const/4 v4, 0x7

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->j:Ljava/util/Calendar;

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->r:I

    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->j:Ljava/util/Calendar;

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->t:I

    invoke-virtual {v0, v9, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v10, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->j:Ljava/util/Calendar;

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->i:Ljava/util/Calendar;

    const/4 v4, 0x7

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->i:Ljava/util/Calendar;

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->s:I

    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->i:Ljava/util/Calendar;

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->u:I

    invoke-virtual {v0, v9, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->i:Ljava/util/Calendar;

    invoke-virtual {v0, v10, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->i:Ljava/util/Calendar;

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    const-string/jumbo v0, "jjj"

    iget-object v4, p0, Lorg/telegram/ui/tools/d/a;->j:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;

    invoke-direct {v0}, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/tools/d/a;->j:Ljava/util/Calendar;

    iget-object v6, p0, Lorg/telegram/ui/tools/d/a;->i:Ljava/util/Calendar;

    add-int/lit8 v7, v2, 0x1

    add-int/lit16 v7, v7, 0x12c

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->b(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    iget v2, p0, Lorg/telegram/ui/tools/d/a;->v:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/ui/tools/d/a;->v:I

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    iget v2, p0, Lorg/telegram/ui/tools/d/a;->C:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    const/4 v2, 0x5

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->o:I

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    iget v2, p0, Lorg/telegram/ui/tools/d/a;->r:I

    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    iget v2, p0, Lorg/telegram/ui/tools/d/a;->t:I

    invoke-virtual {v0, v9, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v10, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->h:Ljava/util/Calendar;

    iget v2, p0, Lorg/telegram/ui/tools/d/a;->w:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/ui/tools/d/a;->w:I

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->h:Ljava/util/Calendar;

    iget v2, p0, Lorg/telegram/ui/tools/d/a;->D:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->h:Ljava/util/Calendar;

    const/4 v1, 0x5

    iget v2, p0, Lorg/telegram/ui/tools/d/a;->p:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->h:Ljava/util/Calendar;

    iget v1, p0, Lorg/telegram/ui/tools/d/a;->s:I

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->h:Ljava/util/Calendar;

    iget v1, p0, Lorg/telegram/ui/tools/d/a;->u:I

    invoke-virtual {v0, v9, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->h:Ljava/util/Calendar;

    invoke-virtual {v0, v10, v3}, Ljava/util/Calendar;->set(II)V

    new-instance v0, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;

    invoke-direct {v0}, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    iget-object v4, p0, Lorg/telegram/ui/tools/d/a;->h:Ljava/util/Calendar;

    const/16 v5, 0x64

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/ui/tools/d/Receiver/DownloadReceiver;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "w_enable"

    iget-object v2, p0, Lorg/telegram/ui/tools/d/a;->L:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "w_disable"

    iget-object v2, p0, Lorg/telegram/ui/tools/d/a;->K:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "Saved"

    const v2, 0x7f08078e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/a;->onBackPressed()Z

    return-void
.end method

.method public a(ILjava/util/Calendar;III)V
    .locals 6
    .param p2    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-ne p1, v3, :cond_0

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/d/a;->o:I

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/tools/d/a;->v:I

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/d/a;->C:I

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "YEAR"

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "MONTH"

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "DATE"

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "p_YEAR"

    invoke-interface {v1, v2, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "p_MONTH"

    invoke-interface {v1, v2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "p_DATE"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->x:Lorg/telegram/ui/tools/d/a$f;

    invoke-virtual {v1, p3, p4, p5, v0}, Lorg/telegram/ui/tools/d/a$f;->setDate(IIILjava/util/Calendar;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->x:Lorg/telegram/ui/tools/d/a$f;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/d/a$f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/d/a;->p:I

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/tools/d/a;->w:I

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/d/a;->D:I

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "YEAR_END"

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "MONTH_END"

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "DATE_END"

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "p_YEAR_END"

    invoke-interface {v1, v2, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "p_MONTH_END"

    invoke-interface {v1, v2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "p_DATE_END"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->q:Lorg/telegram/ui/tools/d/a$f;

    invoke-virtual {v1, p5, p4, p3, v0}, Lorg/telegram/ui/tools/d/a$f;->setDate(IIILjava/util/Calendar;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->q:Lorg/telegram/ui/tools/d/a$f;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/d/a$f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;II)V
    .locals 0

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13

    new-instance v0, Lorg/telegram/ui/tools/d/a$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/tools/d/a$1;-><init>(Lorg/telegram/ui/tools/d/a;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/d/a;->M:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AppNameBeta"

    const v2, 0x7f080630

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/tools/d/a$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/d/a$2;-><init>(Lorg/telegram/ui/tools/d/a;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const/4 v1, 0x4

    const v2, 0x7f02011d

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/tools/d/a$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/d/a$3;-><init>(Lorg/telegram/ui/tools/d/a;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/tools/d/a;->fragmentView:Landroid/view/View;

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "sdownload2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/a;->c:Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/a;->b:[Z

    const v0, 0x7f10007c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f100084

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f100078

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/tools/d/a;->a:Landroid/view/View;

    const v2, 0x7f100080

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/tools/d/a;->d:Landroid/view/View;

    const v2, 0x7f10007b

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/telegram/ui/tools/d/a;->m:Landroid/widget/TextView;

    const v2, 0x7f10007f

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/telegram/ui/tools/d/a;->A:Landroid/widget/TextView;

    const v2, 0x7f100083

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/telegram/ui/tools/d/a;->n:Landroid/widget/TextView;

    const v2, 0x7f100087

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/telegram/ui/tools/d/a;->B:Landroid/widget/TextView;

    const v2, 0x7f100089

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lorg/telegram/ui/tools/d/a;->L:Landroid/widget/CheckBox;

    const v2, 0x7f10008a

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lorg/telegram/ui/tools/d/a;->K:Landroid/widget/CheckBox;

    iget-object v2, p0, Lorg/telegram/ui/tools/d/a;->L:Landroid/widget/CheckBox;

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "w_enable"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lorg/telegram/ui/tools/d/a;->K:Landroid/widget/CheckBox;

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "w_disable"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v12, v2

    move v2, v3

    move v3, v12

    :goto_1
    const/4 v4, 0x7

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/tools/d/a;->b:[Z

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AppName"

    const v2, 0x7f080630

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    const v2, 0x7f10007d

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f100079

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f100081

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f100085

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v10, "actionBarDefault"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v9, "actionBarDefault"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "actionBarDefault"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "actionBarDefault"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v2, Lorg/telegram/ui/tools/d/b/b/b;

    invoke-direct {v2}, Lorg/telegram/ui/tools/d/b/b/b;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/tools/d/a;->h:Ljava/util/Calendar;

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "HOUR_OF_DAY"

    iget-object v5, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    const/16 v9, 0xb

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->r:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "MINUTE"

    iget-object v5, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->t:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "p_YEAR"

    invoke-virtual {v2}, Lorg/telegram/ui/tools/d/b/b/b;->a()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->I:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "YEAR"

    iget-object v5, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->C:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "p_MONTH"

    invoke-virtual {v2}, Lorg/telegram/ui/tools/d/b/b/b;->b()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->G:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "MONTH"

    iget-object v5, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->v:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "DATE"

    iget-object v5, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->o:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "p_DATE"

    invoke-virtual {v2}, Lorg/telegram/ui/tools/d/b/b/b;->c()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->E:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "HOUR_OF_DAY_END"

    iget-object v5, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    const/16 v9, 0xb

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->s:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "MINUTE_END"

    iget-object v5, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->u:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "p_YEAR_END"

    invoke-virtual {v2}, Lorg/telegram/ui/tools/d/b/b/b;->a()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->J:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "YEAR_END"

    iget-object v5, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->D:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "MONTH_END"

    iget-object v5, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->w:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "p_MONTH_END"

    invoke-virtual {v2}, Lorg/telegram/ui/tools/d/b/b/b;->b()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->H:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "DATE_END"

    iget-object v5, p0, Lorg/telegram/ui/tools/d/a;->g:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->p:I

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "p_DATE_END"

    invoke-virtual {v2}, Lorg/telegram/ui/tools/d/b/b/b;->c()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/d/a;->F:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->E:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->G:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->I:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/tools/d/a;->k:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->r:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->t:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/tools/d/a;->y:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->F:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->H:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->J:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/tools/d/a;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->s:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/tools/d/a;->u:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/tools/d/a;->z:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->A:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/telegram/ui/tools/d/a;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->B:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/telegram/ui/tools/d/a;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/tools/d/a$f;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/d/b/b/b;->a()I

    move-result v4

    invoke-virtual {v2}, Lorg/telegram/ui/tools/d/b/b/b;->b()I

    move-result v5

    invoke-virtual {v2}, Lorg/telegram/ui/tools/d/b/b/b;->c()I

    move-result v9

    invoke-direct {v3, p0, v4, v5, v9}, Lorg/telegram/ui/tools/d/a$f;-><init>(Lorg/telegram/ui/tools/d/a;III)V

    iput-object v3, p0, Lorg/telegram/ui/tools/d/a;->x:Lorg/telegram/ui/tools/d/a$f;

    new-instance v3, Lorg/telegram/ui/tools/d/a$f;

    invoke-virtual {v2}, Lorg/telegram/ui/tools/d/b/b/b;->a()I

    move-result v4

    invoke-virtual {v2}, Lorg/telegram/ui/tools/d/b/b/b;->b()I

    move-result v5

    invoke-virtual {v2}, Lorg/telegram/ui/tools/d/b/b/b;->c()I

    move-result v2

    invoke-direct {v3, p0, v4, v5, v2}, Lorg/telegram/ui/tools/d/a$f;-><init>(Lorg/telegram/ui/tools/d/a;III)V

    iput-object v3, p0, Lorg/telegram/ui/tools/d/a;->q:Lorg/telegram/ui/tools/d/a$f;

    iget-object v2, p0, Lorg/telegram/ui/tools/d/a;->m:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/d/a;->n:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/d/a;->a:Landroid/view/View;

    new-instance v3, Lorg/telegram/ui/tools/d/a$a;

    invoke-direct {v3, p0}, Lorg/telegram/ui/tools/d/a$a;-><init>(Lorg/telegram/ui/tools/d/a;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/d/a;->d:Landroid/view/View;

    new-instance v3, Lorg/telegram/ui/tools/d/a$b;

    invoke-direct {v3, p0}, Lorg/telegram/ui/tools/d/a$b;-><init>(Lorg/telegram/ui/tools/d/a;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lorg/telegram/ui/tools/d/a$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/tools/d/a$4;-><init>(Lorg/telegram/ui/tools/d/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/tools/d/a$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/d/a$5;-><init>(Lorg/telegram/ui/tools/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/d/a;->O:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->O:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->O:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->O:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->O:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->O:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/tools/d/a$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/d/a$6;-><init>(Lorg/telegram/ui/tools/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "NoChats"

    const v2, 0x7f08074e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0x6a6a6b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a;->O:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "NoChatsHelp"

    const v2, 0x7f08074f

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0xa

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, -0x6a6a6b

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->O:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/d/a;->N:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->N:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->N:Landroid/widget/ProgressBar;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->fragmentView:Landroid/view/View;

    return-object v0

    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "fa"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/d/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/a;->P:Lorg/telegram/ui/tools/d/a$e;

    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a;->M:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v0

    return v0
.end method

.method public setTime_end(Landroid/view/View;)V
    .locals 0

    return-void
.end method
