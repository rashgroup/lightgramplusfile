.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c$1;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c$1;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;

    iput p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c$1;->b:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c$1;->a:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/c;->setSelection(I)V

    return-void
.end method
