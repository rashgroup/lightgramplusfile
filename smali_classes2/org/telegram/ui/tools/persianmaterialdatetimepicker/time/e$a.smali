.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$a;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$a;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;

    invoke-static {v0, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;->b(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
