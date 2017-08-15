.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$1;
.super Ljava/lang/Object;
.source "YearPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;II)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$1;->c:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

    iput p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$1;->a:I

    iput p3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$1;->c:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$1;->a:I

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$1;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->setSelectionFromTop(II)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$1;->c:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->requestLayout()V

    return-void
.end method
