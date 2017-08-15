.class Lorg/telegram/ui/tools/b$e$a;
.super Ljava/lang/Object;
.source "AlertShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/b$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Lorg/telegram/tgnet/TLRPC$TL_dialog;

.field public b:Lorg/telegram/tgnet/TLObject;

.field public c:I

.field public d:Ljava/lang/CharSequence;

.field final synthetic e:Lorg/telegram/ui/tools/b$e;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/tools/b$e;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/tools/b$e$a;->e:Lorg/telegram/ui/tools/b$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/b$e$a;->a:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/tools/b$e;Lorg/telegram/ui/tools/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/b$e$a;-><init>(Lorg/telegram/ui/tools/b$e;)V

    return-void
.end method
