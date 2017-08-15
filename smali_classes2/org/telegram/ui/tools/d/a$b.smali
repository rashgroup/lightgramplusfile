.class Lorg/telegram/ui/tools/d/a$b;
.super Ljava/lang/Object;
.source "AddRemmber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/d/a;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d/a;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/a$b;->a:Lorg/telegram/ui/tools/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/d/a$b;->a:Lorg/telegram/ui/tools/d/a;

    const/4 v1, 0x2

    invoke-static {v0, v1, v6}, Lorg/telegram/ui/tools/d/b/a;->a(Lorg/telegram/ui/tools/d/b/a$a;IZ)Lorg/telegram/ui/tools/d/b/a;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a$b;->a:Lorg/telegram/ui/tools/d/a;

    iget-object v1, v1, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "YEAR_END"

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a$b;->a:Lorg/telegram/ui/tools/d/a;

    invoke-static {v3}, Lorg/telegram/ui/tools/d/a;->c(Lorg/telegram/ui/tools/d/a;)Lorg/telegram/ui/tools/d/a$f;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/tools/d/a$f;->d:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/tools/d/a$b;->a:Lorg/telegram/ui/tools/d/a;

    iget-object v2, v2, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "MONTH_END"

    iget-object v4, p0, Lorg/telegram/ui/tools/d/a$b;->a:Lorg/telegram/ui/tools/d/a;

    invoke-static {v4}, Lorg/telegram/ui/tools/d/a;->c(Lorg/telegram/ui/tools/d/a;)Lorg/telegram/ui/tools/d/a$f;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/tools/d/a$f;->c:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/tools/d/a$b;->a:Lorg/telegram/ui/tools/d/a;

    iget-object v3, v3, Lorg/telegram/ui/tools/d/a;->e:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "DATE_END"

    iget-object v5, p0, Lorg/telegram/ui/tools/d/a$b;->a:Lorg/telegram/ui/tools/d/a;

    invoke-static {v5}, Lorg/telegram/ui/tools/d/a;->c(Lorg/telegram/ui/tools/d/a;)Lorg/telegram/ui/tools/d/a$f;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/tools/d/a$f;->b:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/tools/d/b/a;->a(III)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a$b;->a:Lorg/telegram/ui/tools/d/a;

    invoke-static {v1}, Lorg/telegram/ui/tools/d/a;->c(Lorg/telegram/ui/tools/d/a;)Lorg/telegram/ui/tools/d/a$f;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/tools/d/a$f;->a:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/d/b/a;->a(Ljava/util/Calendar;)V

    const v1, -0x2cff93

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/d/b/a;->a(I)V

    invoke-virtual {v0, v6}, Lorg/telegram/ui/tools/d/b/a;->a(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/a$b;->a:Lorg/telegram/ui/tools/d/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/d/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "DatePickerDialog"

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/tools/d/b/a;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
