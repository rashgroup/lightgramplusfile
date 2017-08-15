.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/g;
.super Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;
.source "SimpleMonthAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;-><init>(Landroid/content/Context;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;
    .locals 3

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/g;->a:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;

    invoke-direct {v0, p1, v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;)V

    return-object v0
.end method
