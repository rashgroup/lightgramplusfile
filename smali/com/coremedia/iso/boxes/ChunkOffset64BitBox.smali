.class public Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;
.super Lcom/coremedia/iso/boxes/ChunkOffsetBox;
.source "ChunkOffset64BitBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "co64"

.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private chunkOffsets:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "co64"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/ChunkOffsetBox;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "ChunkOffset64BitBox.java"

    const-class v2, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "getChunkOffsets"

    const-string/jumbo v3, "com.coremedia.iso.boxes.ChunkOffset64BitBox"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "[J"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "setChunkOffsets"

    const-string/jumbo v3, "com.coremedia.iso.boxes.ChunkOffset64BitBox"

    const-string/jumbo v4, "[J"

    const-string/jumbo v5, "chunkOffsets"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->chunkOffsets:[J

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->chunkOffsets:[J

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getChunkOffsets()[J
    .locals 2

    sget-object v0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->chunkOffsets:[J

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->chunkOffsets:[J

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    iget-object v1, p0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->chunkOffsets:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-wide v4, v1, v0

    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getContentSize()J
    .locals 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->chunkOffsets:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public setChunkOffsets([J)V
    .locals 2

    sget-object v0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->aspectOf()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->before(Lorg/aspectj/lang/JoinPoint;)V

    iput-object p1, p0, Lcom/coremedia/iso/boxes/ChunkOffset64BitBox;->chunkOffsets:[J

    return-void
.end method
