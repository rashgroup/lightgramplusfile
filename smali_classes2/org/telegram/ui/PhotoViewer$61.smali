.class Lorg/telegram/ui/PhotoViewer$61;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->redraw(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$61;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$61;->val$count:I

    add-int/lit8 v1, v1, 0x1

    # invokes: Lorg/telegram/ui/PhotoViewer;->redraw(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$13300(Lorg/telegram/ui/PhotoViewer;I)V

    return-void
.end method
