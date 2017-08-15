.class Lorg/telegram/ui/SecurityList$11$1;
.super Ljava/lang/Object;
.source "SecurityList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecurityList$11;->needRemoveHint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SecurityList$11;

.field final synthetic val$did:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecurityList$11;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SecurityList$11$1;->this$1:Lorg/telegram/ui/SecurityList$11;

    iput p2, p0, Lorg/telegram/ui/SecurityList$11$1;->val$did:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/SecurityList$11$1;->val$did:I

    invoke-static {v0}, Lorg/telegram/messenger/query/SearchQuery;->removePeer(I)V

    return-void
.end method
