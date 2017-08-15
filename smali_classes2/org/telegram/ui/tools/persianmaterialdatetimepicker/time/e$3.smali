.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;Z)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->c(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->c(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-static {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-static {v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$c;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;II)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->dismiss()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$3;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a()V

    goto :goto_0
.end method
