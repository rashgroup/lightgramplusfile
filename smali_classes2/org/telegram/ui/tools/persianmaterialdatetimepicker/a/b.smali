.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;
.super Ljava/util/GregorianCalendar;
.source "PersianCalendar.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    const-string/jumbo v0, "/"

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->d:Ljava/lang/String;

    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private a(J)J
    .locals 7

    const-wide v4, -0xbfc840e65000L

    const-wide/32 v0, 0x5265c00

    mul-long/2addr v0, p1

    add-long/2addr v0, v4

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x4194997000000000L    # 8.64E7

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/d;->a(DD)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 8

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->getTimeInMillis()J

    move-result-wide v0

    const-wide v2, -0xbfc840e65000L

    sub-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/d;->a(J)J

    move-result-wide v2

    const/16 v0, 0x10

    shr-long v0, v2, v0

    const-wide/32 v4, 0xff00

    and-long/2addr v4, v2

    long-to-int v4, v4

    shr-int/lit8 v4, v4, 0x8

    const-wide/16 v6, 0xff

    and-long/2addr v2, v6

    long-to-int v2, v2

    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    :goto_0
    long-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a:I

    iput v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b:I

    iput v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c:I

    return-void

    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    goto :goto_0
.end method

.method public a(III)V
    .locals 4

    add-int/lit8 v0, p2, 0x1

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a:I

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b:I

    iput p3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c:I

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a:I

    int-to-long v0, v0

    :goto_0
    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c:I

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/d;->a(JII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->setTimeInMillis(J)V

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a:I

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/c;->a:[Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/util/GregorianCalendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->get(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/c;->b:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/c;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/c;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/c;->b:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_4
    sget-object v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/c;->b:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_5
    sget-object v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/c;->b:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_6
    sget-object v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/c;->b:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->c:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/util/GregorianCalendar;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a()V

    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a()V

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-super {p0}, Ljava/util/GregorianCalendar;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",PersianDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
