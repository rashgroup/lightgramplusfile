.class Lorg/telegram/ui/SecurityList$13;
.super Ljava/lang/Object;
.source "SecurityList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecurityList;->didSelectResult(JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecurityList;

.field final synthetic val$dialog_id:J


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecurityList;J)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SecurityList$13;->this$0:Lorg/telegram/ui/SecurityList;

    iput-wide p2, p0, Lorg/telegram/ui/SecurityList$13;->val$dialog_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/SecurityList$13;->this$0:Lorg/telegram/ui/SecurityList;

    iget-wide v2, p0, Lorg/telegram/ui/SecurityList$13;->val$dialog_id:J

    # invokes: Lorg/telegram/ui/SecurityList;->didSelectResult(JZZ)V
    invoke-static {v0, v2, v3, v1, v1}, Lorg/telegram/ui/SecurityList;->access$1400(Lorg/telegram/ui/SecurityList;JZZ)V

    return-void
.end method
