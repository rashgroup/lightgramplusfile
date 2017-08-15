.class public Lorg/telegram/ui/tools/g/d;
.super Ljava/lang/Object;
.source "UpdateBiz.java"


# instance fields
.field private a:Lorg/telegram/ui/tools/g/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/tools/g/a;

    invoke-direct {v0}, Lorg/telegram/ui/tools/g/a;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/d;->a:Lorg/telegram/ui/tools/g/a;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string/jumbo v1, ";;;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Update;)Z
    .locals 5

    const/4 v4, 0x0

    iget v0, p2, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-instance v0, Lorg/telegram/ui/tools/g/g;

    invoke-direct {v0}, Lorg/telegram/ui/tools/g/g;-><init>()V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/g/g;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/g/g;->a(Z)V

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/tools/g/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/g/g;->b(Ljava/lang/String;)V

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$Update;->first_name:Ljava/lang/String;

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$Update;->last_name:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/ui/tools/g/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/g/g;->a(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/g/g;->a(I)V

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->A()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/telegram/ui/tools/c/g;->e(I)V

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/tools/g/d;->a:Lorg/telegram/ui/tools/g/a;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/g/a;->a(Lorg/telegram/ui/tools/g/g;)Ljava/lang/Long;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/g/g;->b(Ljava/lang/String;)V

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Update;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/g/g;->a(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/g/g;->a(I)V

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->A()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/telegram/ui/tools/c/g;->e(I)V

    goto :goto_1

    :cond_3
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    if-nez v1, :cond_4

    :cond_4
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/g/g;->a(I)V

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->A()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lorg/telegram/ui/tools/c/g;->e(I)V

    goto :goto_1
.end method
