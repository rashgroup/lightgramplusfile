.class Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;
.super Landroid/widget/ArrayAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a(Landroid/widget/TextView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

    invoke-static {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;->f()Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->a:I

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;->a(Z)V

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i$a;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;

    invoke-static {v1, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;->a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/i;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/TextViewWithCircularIndicator;

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
