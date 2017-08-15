.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;
.super Ljava/lang/Object;
.source "MonthAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field private d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->a(J)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->a(III)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->a(J)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->a:I

    invoke-virtual {p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->b:I

    invoke-virtual {p1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->e()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->c:I

    return-void
.end method

.method private a(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-direct {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->setTimeInMillis(J)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->b:I

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->a:I

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->d:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->e()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->c:I

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->a:I

    iput p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->b:I

    iput p3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->c:I

    return-void
.end method

.method public a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;)V
    .locals 1

    iget v0, p1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->a:I

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->a:I

    iget v0, p1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->b:I

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->b:I

    iget v0, p1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->c:I

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/d$a;->c:I

    return-void
.end method
