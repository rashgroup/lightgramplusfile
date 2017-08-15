.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$2;
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

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$2;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$2;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;->j()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$2;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
