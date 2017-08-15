.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$2;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$2;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$2;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->j()V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b$2;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
