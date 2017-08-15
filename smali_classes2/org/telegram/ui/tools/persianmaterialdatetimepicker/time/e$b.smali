.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:[I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(I)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(I)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/e$b;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
