.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$5;
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

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$5;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$5;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a()V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$5;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$5;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-static {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$5;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-static {v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->d(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    return-void

    :cond_0
    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
