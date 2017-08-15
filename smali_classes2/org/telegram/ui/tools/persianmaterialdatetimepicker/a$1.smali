.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$1;
.super Ljava/lang/Object;
.source "DatePickerDialogFarsi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;->j()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$b;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;

    invoke-static {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;->b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;

    invoke-static {v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;->b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;

    invoke-static {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;->b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->e()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$b;->onDateSet(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;III)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$1;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;->dismiss()V

    return-void
.end method
